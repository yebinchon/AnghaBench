
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int pf_video_filter; int fmt_out; scalar_t__ b_allow_fmt_out_change; TYPE_3__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_19__ {int p_chain; scalar_t__ p_video_filter; } ;
typedef TYPE_3__ filter_sys_t ;
struct TYPE_20__ {TYPE_1__* sys; int * video; } ;
typedef TYPE_4__ filter_owner_t ;


 int CHAIN_LEVEL_MAX ;
 int Chain ;
 int RestartFilterCallback ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_VAR_DOINHERIT ;
 int VLC_VAR_INTEGER ;
 TYPE_3__* calloc (int,int) ;
 int es_format_Clean (int *) ;
 int es_format_Copy (int *,int ) ;
 int filter_DelProxyCallbacks (TYPE_1__*,scalar_t__,int ) ;
 int filter_chain_Delete (int ) ;
 int filter_chain_GetFmtOut (int ) ;
 int filter_chain_NewVideo (TYPE_1__*,scalar_t__,TYPE_4__*) ;
 int filter_video_chain_cbs ;
 int free (TYPE_3__*) ;
 int msg_Err (TYPE_1__*,char*,int) ;
 int var_Create (TYPE_1__*,char*,int) ;
 int var_Destroy (TYPE_1__*,char*) ;
 int var_GetInteger (TYPE_1__*,char*) ;
 int var_IncInteger (TYPE_1__*,char*) ;
 scalar_t__ var_Type (int ,char*) ;
 int vlc_object_parent (TYPE_1__*) ;

__attribute__((used)) static int Activate( filter_t *p_filter, int (*pf_build)(filter_t *) )
{
    filter_sys_t *p_sys;
    int i_ret = VLC_EGENERIC;

    p_sys = p_filter->p_sys = calloc( 1, sizeof( *p_sys ) );
    if( !p_sys )
        return VLC_ENOMEM;

    filter_owner_t owner = {
        .video = &filter_video_chain_cbs,
        .sys = p_filter,
    };

    p_sys->p_chain = filter_chain_NewVideo( p_filter, p_filter->b_allow_fmt_out_change, &owner );
    if( !p_sys->p_chain )
    {
        free( p_sys );
        return VLC_EGENERIC;
    }

    int type = VLC_VAR_INTEGER;
    if( var_Type( vlc_object_parent(p_filter), "chain-level" ) != 0 )
        type |= VLC_VAR_DOINHERIT;

    var_Create( p_filter, "chain-level", type );

    var_IncInteger( p_filter, "chain-level" );

    int level = var_GetInteger( p_filter, "chain-level" );
    if( level < 0 || level > CHAIN_LEVEL_MAX )
        msg_Err( p_filter, "Too high level of recursion (%d)", level );
    else
        i_ret = pf_build( p_filter );

    var_Destroy( p_filter, "chain-level" );

    if( i_ret )
    {

        if (p_sys->p_video_filter)
            filter_DelProxyCallbacks( p_filter, p_sys->p_video_filter,
                                      RestartFilterCallback );
        filter_chain_Delete( p_sys->p_chain );
        free( p_sys );
        return VLC_EGENERIC;
    }
    if( p_filter->b_allow_fmt_out_change )
    {
        es_format_Clean( &p_filter->fmt_out );
        es_format_Copy( &p_filter->fmt_out,
                        filter_chain_GetFmtOut( p_sys->p_chain ) );
    }

    p_filter->pf_video_filter = Chain;
    return VLC_SUCCESS;
}
