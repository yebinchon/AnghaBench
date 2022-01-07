
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {int p_cfg; int pf_sub_source; TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_10__ {int i_inputfd; int i_outputfd; int b_updated; int b_atomic; void* psz_outputfile; void* psz_inputfile; int lock; int overlays; int processed; int pending; int atomic; int output; int input; } ;
typedef TYPE_2__ filter_sys_t ;


 int AdjustCallback ;
 int BufferInit (int *) ;
 int Filter ;
 int QueueInit (int *) ;
 int RegisterCommand (TYPE_1__*) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int config_ChainParse (TYPE_1__*,char*,int ,int ) ;
 int do_ListInit (int *) ;
 TYPE_2__* malloc (int) ;
 int ppsz_filter_options ;
 int var_AddCallback (TYPE_1__*,char*,int ,TYPE_2__*) ;
 void* var_CreateGetStringCommand (TYPE_1__*,char*) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static int Create( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys;


    p_filter->p_sys = malloc( sizeof( filter_sys_t ) );
    if( p_filter->p_sys == ((void*)0) )
        return VLC_ENOMEM;
    p_sys = p_filter->p_sys;

    BufferInit( &p_sys->input );
    BufferInit( &p_sys->output );
    QueueInit( &p_sys->atomic );
    QueueInit( &p_sys->pending );
    QueueInit( &p_sys->processed );
    do_ListInit( &p_sys->overlays );

    p_sys->i_inputfd = -1;
    p_sys->i_outputfd = -1;
    p_sys->b_updated = 1;
    p_sys->b_atomic = 0;
    vlc_mutex_init( &p_sys->lock );

    p_filter->pf_sub_source = Filter;

    config_ChainParse( p_filter, "overlay-", ppsz_filter_options,
                       p_filter->p_cfg );

    p_sys->psz_inputfile = var_CreateGetStringCommand( p_filter,
                                                       "overlay-input" );
    p_sys->psz_outputfile = var_CreateGetStringCommand( p_filter,
                                                        "overlay-output" );

    var_AddCallback( p_filter, "overlay-input", AdjustCallback, p_sys );
    var_AddCallback( p_filter, "overlay-output", AdjustCallback, p_sys );

    RegisterCommand( p_filter );
    return VLC_SUCCESS;
}
