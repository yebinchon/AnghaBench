
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct sockaddr {int dummy; } ;
struct in_addr {int dummy; } ;
typedef struct in_addr in6_addr ;
struct TYPE_6__ {scalar_t__ mediac; int i_media_type; int rtcp_port; int psz_uri; TYPE_1__* mediav; } ;
typedef TYPE_2__ sdp_t ;
typedef int psz_uri ;
typedef int psz_source ;
struct TYPE_5__ {int n_addr; scalar_t__ addrlen; char const* fmt; int addr; } ;


 int AF_INET ;
 int AF_INET6 ;
 char* FindAttribute (TYPE_2__*,int ,char*) ;
 int NI_NUMERICHOST ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int asprintf (int *,char*,char const*,char const*,...) ;
 void* atoi (char const*) ;
 int free (char*) ;
 int * inet_ntop (int ,struct in_addr*,char*,int) ;
 int inet_pton (int ,char*,struct in_addr*) ;
 scalar_t__ memcmp (int *,int *,scalar_t__) ;
 int msg_Dbg (int *,char*,...) ;
 int sscanf (char const*,char*,unsigned int*,char*) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ vlc_getnameinfo (struct sockaddr*,scalar_t__,char*,int,int*,int ) ;

__attribute__((used)) static int ParseConnection( vlc_object_t *p_obj, sdp_t *p_sdp )
{
    if (p_sdp->mediac == 0)
    {
        msg_Dbg (p_obj, "Ignoring SDP with no media");
        return VLC_EGENERIC;
    }

    for (unsigned i = 1; i < p_sdp->mediac; i++)
    {
        if ((p_sdp->mediav[i].n_addr != p_sdp->mediav->n_addr)
         || (p_sdp->mediav[i].addrlen != p_sdp->mediav->addrlen)
         || memcmp (&p_sdp->mediav[i].addr, &p_sdp->mediav->addr,
                    p_sdp->mediav->addrlen))
        {
            msg_Dbg (p_obj, "Multiple media ports not supported -> live555");
            return VLC_EGENERIC;
        }
    }

    if (p_sdp->mediav->n_addr != 1)
    {
        msg_Dbg (p_obj, "Layered encoding not supported -> live555");
        return VLC_EGENERIC;
    }

    char psz_uri[1026];
    const char *host;
    int port;

    psz_uri[0] = '[';
    if (vlc_getnameinfo ((struct sockaddr *)&(p_sdp->mediav->addr),
                         p_sdp->mediav->addrlen, psz_uri + 1,
                         sizeof (psz_uri) - 2, &port, NI_NUMERICHOST))
        return VLC_EGENERIC;

    if (strchr (psz_uri + 1, ':'))
    {
        host = psz_uri;
        strcat (psz_uri, "]");
    }
    else
        host = psz_uri + 1;


    char *sdp_proto = strdup (p_sdp->mediav[0].fmt);
    if (sdp_proto == ((void*)0))
        return VLC_ENOMEM;

    char *subtype = strchr (sdp_proto, ' ');
    if (subtype == ((void*)0))
    {
        msg_Dbg (p_obj, "missing SDP media subtype: %s", sdp_proto);
        free (sdp_proto);
        return VLC_EGENERIC;
    }
    else
    {
        *subtype++ = '\0';


        if (!strcasecmp (sdp_proto, "udp"))
            p_sdp->i_media_type = 33;
        else
            p_sdp->i_media_type = atoi (subtype);
    }



    static const char proto_match[] =
        "udp\0" "udp\0\0"
        "RTP/AVP\0" "rtp\0\0"
        "UDPLite/RTP/AVP\0" "udplite\0\0"
        "DCCP/RTP/AVP\0" "dccp\0\1"
        "TCP/RTP/AVP\0" "rtptcp\0\1"
        "\0";

    const char *vlc_proto = ((void*)0);
    uint8_t flags = 0;
    for (const char *proto = proto_match; *proto;)
    {
        if (strcasecmp (proto, sdp_proto) == 0)
        {
            vlc_proto = proto + strlen (proto) + 1;
            flags = vlc_proto[strlen (vlc_proto) + 1];
            break;
        }
        proto += strlen (proto) + 1;
        proto += strlen (proto) + 2;
    }

    free (sdp_proto);
    if (vlc_proto == ((void*)0))
    {
        msg_Dbg (p_obj, "unknown SDP media protocol: %s",
                 p_sdp->mediav[0].fmt);
        return VLC_EGENERIC;
    }

    if (!strcmp (vlc_proto, "udp") || FindAttribute (p_sdp, 0, "rtcp-mux"))
        p_sdp->rtcp_port = 0;
    else
    {
        const char *rtcp = FindAttribute (p_sdp, 0, "rtcp");
        if (rtcp)
            p_sdp->rtcp_port = atoi (rtcp);
        else
        if (port & 1)
            p_sdp->rtcp_port = port++;
        else
            p_sdp->rtcp_port = port + 1;
    }

    if (flags & 1)
    {

        const char *setup = FindAttribute (p_sdp, 0, "setup");
        if (setup == ((void*)0))
            setup = "active";

        if (strcmp (setup, "actpass") && strcmp (setup, "passive"))
        {
            msg_Dbg (p_obj, "unsupported COMEDIA mode: %s", setup);
            return VLC_EGENERIC;
        }

        if (asprintf (&p_sdp->psz_uri, "%s://%s:%d", vlc_proto,
                      host, port) == -1)
            return VLC_ENOMEM;
    }
    else
    {

        char psz_source[258] = "";
        const char *sfilter = FindAttribute (p_sdp, 0, "source-filter");
        if (sfilter != ((void*)0))
        {
            char psz_source_ip[256];
            unsigned ipv;

            if (sscanf (sfilter, " incl IN IP%u %*s %255s ", &ipv,
                        psz_source_ip) == 2)
            {


                switch (ipv)
                {
                    case 4:
                    {
                        struct in_addr addr;
                        if ((inet_pton (AF_INET, psz_source_ip, &addr) > 0)
                        && (inet_ntop (AF_INET, &addr, psz_source,
                                        sizeof (psz_source)) == ((void*)0)))
                            *psz_source = '\0';
                        break;
                    }
                }
            }
        }

        if (asprintf (&p_sdp->psz_uri, "%s://%s@%s:%i", vlc_proto, psz_source,
                     host, port) == -1)
            return VLC_ENOMEM;
    }

    return VLC_SUCCESS;
}
