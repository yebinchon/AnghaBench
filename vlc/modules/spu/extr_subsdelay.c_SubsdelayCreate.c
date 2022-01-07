
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {int p_cfg; int pf_sub_filter; TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_9__ {int heap; void* i_min_start_stop_interval; void* i_min_stop_start_interval; void* i_min_stops_interval; void* i_min_alpha; void* i_overlap; int f_factor; void* i_mode; } ;
typedef TYPE_2__ filter_sys_t ;


 int CFG_FACTOR ;
 int CFG_MIN_ALPHA ;
 int CFG_MIN_START_STOP_INTERVAL ;
 int CFG_MIN_STOPS_INTERVAL ;
 int CFG_MIN_STOP_START_INTERVAL ;
 int CFG_MODE ;
 int CFG_OVERLAP ;
 int CFG_PREFIX ;
 int SubsdelayCallback ;
 int SubsdelayFilter ;
 int SubsdelayHeapInit (int *) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 void* VLC_TICK_FROM_MS (void*) ;
 int config_ChainParse (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ malloc (int) ;
 int ppsz_filter_options ;
 int var_AddCallback (TYPE_1__*,int ,int ,TYPE_2__*) ;
 int var_CreateGetFloatCommand (TYPE_1__*,int ) ;
 void* var_CreateGetIntegerCommand (TYPE_1__*,int ) ;

__attribute__((used)) static int SubsdelayCreate( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *) p_this;
    filter_sys_t *p_sys;


    p_sys = (filter_sys_t*) malloc( sizeof(filter_sys_t) );

    if( !p_sys )
    {
        return VLC_ENOMEM;
    }



    p_sys->i_mode = var_CreateGetIntegerCommand( p_filter, CFG_MODE );
    var_AddCallback( p_filter, CFG_MODE, SubsdelayCallback, p_sys );

    p_sys->f_factor = var_CreateGetFloatCommand( p_filter, CFG_FACTOR );
    var_AddCallback( p_filter, CFG_FACTOR, SubsdelayCallback, p_sys );

    p_sys->i_overlap = var_CreateGetIntegerCommand( p_filter, CFG_OVERLAP );
    var_AddCallback( p_filter, CFG_OVERLAP, SubsdelayCallback, p_sys );

    p_sys->i_min_alpha = var_CreateGetIntegerCommand( p_filter, CFG_MIN_ALPHA );
    var_AddCallback( p_filter, CFG_MIN_ALPHA, SubsdelayCallback, p_sys );

    p_sys->i_min_stops_interval
            = VLC_TICK_FROM_MS( var_CreateGetIntegerCommand( p_filter, CFG_MIN_STOPS_INTERVAL ) );
    var_AddCallback( p_filter, CFG_MIN_STOPS_INTERVAL, SubsdelayCallback, p_sys );

    p_sys->i_min_stop_start_interval
            = VLC_TICK_FROM_MS( var_CreateGetIntegerCommand( p_filter, CFG_MIN_STOP_START_INTERVAL ) );
    var_AddCallback( p_filter, CFG_MIN_STOP_START_INTERVAL, SubsdelayCallback, p_sys );

    p_sys->i_min_start_stop_interval
            = VLC_TICK_FROM_MS( var_CreateGetIntegerCommand( p_filter, CFG_MIN_START_STOP_INTERVAL ) );
    var_AddCallback( p_filter, CFG_MIN_START_STOP_INTERVAL, SubsdelayCallback, p_sys );

    p_filter->p_sys = p_sys;
    p_filter->pf_sub_filter = SubsdelayFilter;

    config_ChainParse( p_filter, CFG_PREFIX, ppsz_filter_options, p_filter->p_cfg );

    SubsdelayHeapInit( &p_sys->heap );

    return VLC_SUCCESS;
}
