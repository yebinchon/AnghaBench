
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_11__ {TYPE_2__* p_sys; int pf_control; int pf_send; int pf_del; int pf_add; int p_next; int p_sout; TYPE_3__* p_cfg; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_12__ {int i_nb_streams; char** pp_streams; int i_nb_last_streams; char** pp_last_streams; int i_nb_select; char** ppsz_select; } ;
typedef TYPE_2__ sout_stream_sys_t ;
struct TYPE_13__ {char* psz_value; int psz_name; struct TYPE_13__* p_next; } ;
typedef TYPE_3__ config_chain_t ;


 int Add ;
 int Control ;
 int Del ;
 int Send ;
 int TAB_APPEND (int,char**,TYPE_1__*) ;
 int TAB_INIT (int,char**) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 TYPE_1__* sout_StreamChainNew (int ,char*,int ,TYPE_1__**) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int strncmp (int ,char*,int ) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys;
    config_chain_t *p_cfg;

    msg_Dbg( p_stream, "creating 'duplicate'" );

    p_sys = malloc( sizeof( sout_stream_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    TAB_INIT( p_sys->i_nb_streams, p_sys->pp_streams );
    TAB_INIT( p_sys->i_nb_last_streams, p_sys->pp_last_streams );
    TAB_INIT( p_sys->i_nb_select, p_sys->ppsz_select );

    for( p_cfg = p_stream->p_cfg; p_cfg != ((void*)0); p_cfg = p_cfg->p_next )
    {
        if( !strncmp( p_cfg->psz_name, "dst", strlen( "dst" ) ) )
        {
            sout_stream_t *s, *p_last;

            msg_Dbg( p_stream, " * adding `%s'", p_cfg->psz_value );
            s = sout_StreamChainNew( p_stream->p_sout, p_cfg->psz_value,
                p_stream->p_next, &p_last );

            if( s )
            {
                TAB_APPEND( p_sys->i_nb_streams, p_sys->pp_streams, s );
                TAB_APPEND( p_sys->i_nb_last_streams, p_sys->pp_last_streams,
                    p_last );
                TAB_APPEND( p_sys->i_nb_select, p_sys->ppsz_select, ((void*)0) );
            }
        }
        else if( !strncmp( p_cfg->psz_name, "select", strlen( "select" ) ) )
        {
            char *psz = p_cfg->psz_value;
            if( p_sys->i_nb_select > 0 && psz && *psz )
            {
                char **ppsz_select = &p_sys->ppsz_select[p_sys->i_nb_select - 1];

                if( *ppsz_select )
                {
                    msg_Err( p_stream, " * ignore selection `%s' (it already has `%s')",
                             psz, *ppsz_select );
                }
                else
                {
                    msg_Dbg( p_stream, " * apply selection `%s'", psz );
                    *ppsz_select = strdup( psz );
                }
            }
        }
        else
        {
            msg_Err( p_stream, " * ignore unknown option `%s'", p_cfg->psz_name );
        }
    }

    if( p_sys->i_nb_streams == 0 )
    {
        msg_Err( p_stream, "no destination given" );
        free( p_sys );

        return VLC_EGENERIC;
    }

    p_stream->pf_add = Add;
    p_stream->pf_del = Del;
    p_stream->pf_send = Send;
    p_stream->pf_control = Control;

    p_stream->p_sys = p_sys;

    return VLC_SUCCESS;
}
