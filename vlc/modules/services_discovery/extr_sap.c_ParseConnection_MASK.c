#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int uint8_t ;
struct sockaddr {int dummy; } ;
struct in_addr {int dummy; } ;
typedef  struct in_addr in6_addr ;
struct TYPE_6__ {scalar_t__ mediac; int i_media_type; int rtcp_port; int /*<<< orphan*/  psz_uri; TYPE_1__* mediav; } ;
typedef  TYPE_2__ sdp_t ;
typedef  int /*<<< orphan*/  psz_uri ;
typedef  int /*<<< orphan*/  psz_source ;
struct TYPE_5__ {int n_addr; scalar_t__ addrlen; char const* fmt; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 char* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char const*,char const*,...) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,struct in_addr*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct in_addr*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC8 (char const*,char*,unsigned int*,char*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (char*,char) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 char* FUNC13 (char const*) ; 
 size_t FUNC14 (char const*) ; 
 scalar_t__ FUNC15 (struct sockaddr*,scalar_t__,char*,int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16( vlc_object_t *p_obj, sdp_t *p_sdp )
{
    if (p_sdp->mediac == 0)
    {
        FUNC7 (p_obj, "Ignoring SDP with no media");
        return VLC_EGENERIC;
    }

    for (unsigned i = 1; i < p_sdp->mediac; i++)
    {
        if ((p_sdp->mediav[i].n_addr != p_sdp->mediav->n_addr)
         || (p_sdp->mediav[i].addrlen != p_sdp->mediav->addrlen)
         || FUNC6 (&p_sdp->mediav[i].addr, &p_sdp->mediav->addr,
                    p_sdp->mediav->addrlen))
        {
            FUNC7 (p_obj, "Multiple media ports not supported -> live555");
            return VLC_EGENERIC;
        }
    }

    if (p_sdp->mediav->n_addr != 1)
    {
        FUNC7 (p_obj, "Layered encoding not supported -> live555");
        return VLC_EGENERIC;
    }

    char psz_uri[1026];
    const char *host;
    int port;

    psz_uri[0] = '[';
    if (FUNC15 ((struct sockaddr *)&(p_sdp->mediav->addr),
                         p_sdp->mediav->addrlen, psz_uri + 1,
                         sizeof (psz_uri) - 2, &port, NI_NUMERICHOST))
        return VLC_EGENERIC;

    if (FUNC11 (psz_uri + 1, ':'))
    {
        host = psz_uri;
        FUNC10 (psz_uri, "]");
    }
    else
        host = psz_uri + 1;

    /* Parse m= field */
    char *sdp_proto = FUNC13 (p_sdp->mediav[0].fmt);
    if (sdp_proto == NULL)
        return VLC_ENOMEM;

    char *subtype = FUNC11 (sdp_proto, ' ');
    if (subtype == NULL)
    {
        FUNC7 (p_obj, "missing SDP media subtype: %s", sdp_proto);
        FUNC3 (sdp_proto);
        return VLC_EGENERIC;
    }
    else
    {
        *subtype++ = '\0';
        /* FIXME: check for multiple payload types in RTP/AVP case.
         * FIXME: check for "mpeg" subtype in raw udp case. */
        if (!FUNC9 (sdp_proto, "udp"))
            p_sdp->i_media_type = 33;
        else
            p_sdp->i_media_type = FUNC2 (subtype);
    }

    /* RTP protocol, nul, VLC shortcut, nul, flags byte as follow:
     * 0x1: Connection-Oriented media. */
    static const char proto_match[] =
        "udp\0"             "udp\0\0"
        "RTP/AVP\0"         "rtp\0\0"
        "UDPLite/RTP/AVP\0" "udplite\0\0"
        "DCCP/RTP/AVP\0"    "dccp\0\1"
        "TCP/RTP/AVP\0"     "rtptcp\0\1"
        "\0";

    const char *vlc_proto = NULL;
    uint8_t flags = 0;
    for (const char *proto = proto_match; *proto;)
    {
        if (FUNC9 (proto, sdp_proto) == 0)
        {
            vlc_proto = proto + FUNC14 (proto) + 1;
            flags = vlc_proto[FUNC14 (vlc_proto) + 1];
            break;
        }
        proto += FUNC14 (proto) + 1;
        proto += FUNC14 (proto) + 2;
    }

    FUNC3 (sdp_proto);
    if (vlc_proto == NULL)
    {
        FUNC7 (p_obj, "unknown SDP media protocol: %s",
                 p_sdp->mediav[0].fmt);
        return VLC_EGENERIC;
    }

    if (!FUNC12 (vlc_proto, "udp") || FUNC0 (p_sdp, 0, "rtcp-mux"))
        p_sdp->rtcp_port = 0;
    else
    {
        const char *rtcp = FUNC0 (p_sdp, 0, "rtcp");
        if (rtcp)
            p_sdp->rtcp_port = FUNC2 (rtcp);
        else
        if (port & 1) /* odd port -> RTCP; next even port -> RTP */
            p_sdp->rtcp_port = port++;
        else /* even port -> RTP; next odd port -> RTCP */
            p_sdp->rtcp_port = port + 1;
    }

    if (flags & 1)
    {
        /* Connection-oriented media */
        const char *setup = FUNC0 (p_sdp, 0, "setup");
        if (setup == NULL)
            setup = "active"; /* default value */

        if (FUNC12 (setup, "actpass") && FUNC12 (setup, "passive"))
        {
            FUNC7 (p_obj, "unsupported COMEDIA mode: %s", setup);
            return VLC_EGENERIC;
        }

        if (FUNC1 (&p_sdp->psz_uri, "%s://%s:%d", vlc_proto,
                      host, port) == -1)
            return VLC_ENOMEM;
    }
    else
    {
        /* Non-connected (normally multicast) media */
        char psz_source[258] = "";
        const char *sfilter = FUNC0 (p_sdp, 0, "source-filter");
        if (sfilter != NULL)
        {
            char psz_source_ip[256];
            unsigned ipv;

            if (FUNC8 (sfilter, " incl IN IP%u %*s %255s ", &ipv,
                        psz_source_ip) == 2)
            {
                /* According to RFC4570, FQDNs can be used for source-filters,
                 * but -seriously- this is impractical */
                switch (ipv)
                {
#ifdef AF_INET6
                    case 6:
                    {
                        struct in6_addr addr;
                        if ((inet_pton (AF_INET6, psz_source_ip, &addr) > 0)
                        && (inet_ntop (AF_INET6, &addr, psz_source + 1,
                                        sizeof (psz_source) - 2) != NULL))
                        {
                            psz_source[0] = '[';
                            psz_source[strlen (psz_source)] = ']';
                        }
                        break;
                    }
#endif
                    case 4:
                    {
                        struct in_addr addr;
                        if ((FUNC5 (AF_INET, psz_source_ip, &addr) > 0)
                        && (FUNC4 (AF_INET, &addr, psz_source,
                                        sizeof (psz_source)) == NULL))
                            *psz_source = '\0';
                        break;
                    }
                }
            }
        }

        if (FUNC1 (&p_sdp->psz_uri, "%s://%s@%s:%i", vlc_proto, psz_source,
                     host, port) == -1)
            return VLC_ENOMEM;
    }

    return VLC_SUCCESS;
}