
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_12__ {int * psz_uri; int i_media_type; } ;
typedef TYPE_1__ sdp_t ;
struct TYPE_13__ {int pf_demux; int pf_control; TYPE_3__* p_sys; int s; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_14__ {TYPE_1__* p_sdp; } ;
typedef TYPE_3__ demux_sys_t ;


 int Control ;
 int Demux ;
 int FREENULL (char*) ;
 int FreeSDP (TYPE_1__*) ;
 int IsWellKnownPayload (int ) ;
 scalar_t__ ParseConnection (int ,TYPE_1__*) ;
 TYPE_1__* ParseSDP (int ,char*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_2__*) ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 TYPE_3__* malloc (int) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int msg_Err (TYPE_2__*,char*) ;
 int msg_Warn (TYPE_2__*,char*) ;
 char* realloc (char*,size_t) ;
 scalar_t__ unlikely (int ) ;
 int var_CreateGetBool (TYPE_2__*,char*) ;
 int vlc_stream_Peek (int ,int const**,int) ;
 size_t vlc_stream_Read (int ,char*,int const) ;

__attribute__((used)) static int OpenDemux( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    const uint8_t *p_peek;
    char *psz_sdp = ((void*)0);
    sdp_t *p_sdp = ((void*)0);
    int errval = VLC_EGENERIC;
    size_t i_len;

    if( !var_CreateGetBool( p_demux, "sap-parse" ) )
    {

        return VLC_EGENERIC;
    }

    assert( p_demux->s );


    if( vlc_stream_Peek( p_demux->s, &p_peek, 7 ) < 7 )
        return VLC_EGENERIC;

    if( memcmp( p_peek, "v=0\r\no=", 7 ) && memcmp( p_peek, "v=0\no=", 6 ) )
        return VLC_EGENERIC;


    for( i_len = 0, psz_sdp = ((void*)0); i_len < 65536; )
    {
        const int i_read_max = 1024;
        char *psz_sdp_new = realloc( psz_sdp, i_len + i_read_max + 1 );
        size_t i_read;
        if( psz_sdp_new == ((void*)0) )
        {
            errval = VLC_ENOMEM;
            goto error;
        }
        psz_sdp = psz_sdp_new;

        i_read = vlc_stream_Read( p_demux->s, &psz_sdp[i_len], i_read_max );
        if( (int)i_read < 0 )
        {
            msg_Err( p_demux, "cannot read SDP" );
            goto error;
        }
        i_len += i_read;

        psz_sdp[i_len] = '\0';

        if( (int)i_read < i_read_max )
            break;
    }

    p_sdp = ParseSDP( VLC_OBJECT(p_demux), psz_sdp );

    if( !p_sdp )
    {
        msg_Warn( p_demux, "invalid SDP");
        goto error;
    }

    if( ParseConnection( VLC_OBJECT( p_demux ), p_sdp ) )
    {
        p_sdp->psz_uri = ((void*)0);
    }
    if (!IsWellKnownPayload (p_sdp->i_media_type))
        goto error;
    if( p_sdp->psz_uri == ((void*)0) ) goto error;

    demux_sys_t *p_sys = malloc( sizeof(*p_sys) );
    if( unlikely(p_sys == ((void*)0)) )
        goto error;
    p_sys->p_sdp = p_sdp;
    p_demux->p_sys = p_sys;
    p_demux->pf_control = Control;
    p_demux->pf_demux = Demux;

    FREENULL( psz_sdp );
    return VLC_SUCCESS;

error:
    FREENULL( psz_sdp );
    if( p_sdp ) FreeSDP( p_sdp );
    return errval;
}
