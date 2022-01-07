
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef char uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_14__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_15__ {int i_announces; TYPE_4__** pp_announces; int b_parse; scalar_t__ b_strict; } ;
typedef TYPE_2__ services_discovery_sys_t ;
struct TYPE_16__ {char const* psz_sdp; char* psz_uri; int i_media_type; } ;
typedef TYPE_3__ sdp_t ;
struct TYPE_17__ {scalar_t__ i_hash; int i_period_trust; int i_period; int i_last; int i_source; int p_sdp; } ;
typedef TYPE_4__ sap_announce_t ;
typedef int i_source ;


 int CreateAnnounce (TYPE_1__*,int *,scalar_t__,TYPE_3__*) ;
 int Decompress (char const*,char**,int) ;
 int FreeSDP (TYPE_3__*) ;
 scalar_t__ IsSameSession (int ,TYPE_3__*) ;
 int IsWellKnownPayload (int ) ;
 scalar_t__ ParseConnection (int ,TYPE_3__*) ;
 TYPE_3__* ParseSDP (int ,char const*) ;
 scalar_t__ U16_AT (char const*) ;
 int U32_AT (char const*) ;
 int VLC_EGENERIC ;
 int VLC_OBJECT (TYPE_1__*) ;
 int VLC_SUCCESS ;
 int asprintf (char**,char*,char const*) ;
 int assert (int) ;
 int free (char*) ;
 int memcmp (int ,int *,int) ;
 int memset (int *,int ,int) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int vlc_tick_now () ;
 char* xrealloc (char*,int) ;

__attribute__((used)) static int ParseSAP( services_discovery_t *p_sd, const uint8_t *buf,
                     size_t len )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    const char *psz_sdp;
    const uint8_t *end = buf + len;
    sdp_t *p_sdp;
    uint32_t i_source[4];

    assert (buf[len] == '\0');

    if (len < 4)
        return VLC_EGENERIC;

    uint8_t flags = buf[0];
    uint8_t auth_len = buf[1];


    if ((flags >> 5) != 1)
        return VLC_EGENERIC;

    bool b_ipv6 = (flags & 0x10) != 0;
    bool b_need_delete = (flags & 0x04) != 0;

    if (flags & 0x02)
    {
        msg_Dbg( p_sd, "encrypted packet, unsupported" );
        return VLC_EGENERIC;
    }

    bool b_compressed = (flags & 0x01) != 0;

    uint16_t i_hash = U16_AT (buf + 2);

    if( p_sys->b_strict && i_hash == 0 )
    {
        msg_Dbg( p_sd, "strict mode, discarding announce with null id hash");
        return VLC_EGENERIC;
    }

    buf += 4;
    if( b_ipv6 )
    {
        for( int i = 0; i < 4; i++,buf+=4)
            i_source[i] = U32_AT(buf);
    }
    else
    {
        memset(i_source, 0, sizeof(i_source));
        i_source[3] = U32_AT(buf);
        buf+=4;
    }

    buf += auth_len;
    if (buf > end)
        return VLC_EGENERIC;

    uint8_t *decomp = ((void*)0);
    if( b_compressed )
    {
        int newsize = Decompress (buf, &decomp, end - buf);
        if (newsize < 0)
        {
            msg_Dbg( p_sd, "decompression of SAP packet failed" );
            return VLC_EGENERIC;
        }

        decomp = xrealloc (decomp, newsize + 1);
        decomp[newsize] = '\0';
        psz_sdp = (const char *)decomp;
        len = newsize;
    }
    else
    {
        psz_sdp = (const char *)buf;
        len = end - buf;
    }


    assert( psz_sdp[len] == '\0');



    if (strncmp (psz_sdp, "v=0", 3))
    {
        size_t clen = strlen (psz_sdp) + 1;

        if (strcmp (psz_sdp, "application/sdp"))
        {
            msg_Dbg (p_sd, "unsupported content type: %s", psz_sdp);
            goto error;
        }


        if (len <= clen)
            goto error;

        len -= clen;
        psz_sdp += clen;
    }


    p_sdp = ParseSDP( VLC_OBJECT(p_sd), psz_sdp );

    if( p_sdp == ((void*)0) )
        goto error;

    p_sdp->psz_sdp = psz_sdp;



    if( ParseConnection( VLC_OBJECT(p_sd), p_sdp ) )
        p_sdp->psz_uri = ((void*)0);


    if( !IsWellKnownPayload( p_sdp->i_media_type ) || !p_sys->b_parse )
    {
        free( p_sdp->psz_uri );
        if (asprintf( &p_sdp->psz_uri, "sdp://%s", p_sdp->psz_sdp ) == -1)
            p_sdp->psz_uri = ((void*)0);
    }

    if( p_sdp->psz_uri == ((void*)0) )
    {
        FreeSDP( p_sdp );
        goto error;
    }

    for( int i = 0 ; i < p_sys->i_announces ; i++ )
    {
        sap_announce_t * p_announce = p_sys->pp_announces[i];

        if( ( !i_hash && IsSameSession( p_announce->p_sdp, p_sdp ) )
            || ( i_hash && p_announce->i_hash == i_hash
                 && !memcmp(p_announce->i_source, i_source, sizeof(i_source)) ) )
        {
            if( !b_need_delete )
            {


                if( p_announce->i_period_trust <= 5 )
                    p_announce->i_period_trust++;


                vlc_tick_t now = vlc_tick_now();
                p_announce->i_period = ( p_announce->i_period * (p_announce->i_period_trust-1) + (now - p_announce->i_last) ) / p_announce->i_period_trust;
                p_announce->i_last = now;
            }
            FreeSDP( p_sdp );
            free (decomp);
            return VLC_SUCCESS;
        }
    }

    CreateAnnounce( p_sd, i_source, i_hash, p_sdp );

    free (decomp);
    return VLC_SUCCESS;
error:
    free (decomp);
    return VLC_EGENERIC;
}
