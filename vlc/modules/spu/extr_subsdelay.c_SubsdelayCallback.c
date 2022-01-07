
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_int; int f_float; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
typedef int filter_t ;
struct TYPE_7__ {int heap; void* i_min_start_stop_interval; void* i_min_stop_start_interval; void* i_min_stops_interval; int i_min_alpha; int i_overlap; int f_factor; int i_mode; } ;
typedef TYPE_2__ filter_sys_t ;


 int CFG_FACTOR ;
 int CFG_MIN_ALPHA ;
 int CFG_MIN_START_STOP_INTERVAL ;
 int CFG_MIN_STOPS_INTERVAL ;
 int CFG_MIN_STOP_START_INTERVAL ;
 int CFG_MODE ;
 int CFG_OVERLAP ;
 int SubsdelayHeapLock (int *) ;
 int SubsdelayHeapUnlock (int *) ;
 int SubsdelayRecalculateDelays (int *) ;
 int VLC_SUCCESS ;
 void* VLC_TICK_FROM_MS (int ) ;
 int VLC_UNUSED (TYPE_1__) ;
 int strcmp (char const*,int ) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static int SubsdelayCallback( vlc_object_t *p_this, char const *psz_var, vlc_value_t oldval, vlc_value_t newval,
        void *p_data )
{
    filter_sys_t *p_sys = (filter_sys_t *) p_data;

    VLC_UNUSED( oldval );

    SubsdelayHeapLock( &p_sys->heap );

    if( !strcmp( psz_var, CFG_MODE ) )
    {
        p_sys->i_mode = newval.i_int;
    }
    else if( !strcmp( psz_var, CFG_FACTOR ) )
    {
        p_sys->f_factor = newval.f_float;
    }
    else if( !strcmp( psz_var, CFG_OVERLAP ) )
    {
        p_sys->i_overlap = newval.i_int;
    }
    else if( !strcmp( psz_var, CFG_MIN_ALPHA ) )
    {
        p_sys->i_min_alpha = newval.i_int;
    }
    else if( !strcmp( psz_var, CFG_MIN_STOPS_INTERVAL ) )
    {
        p_sys->i_min_stops_interval = VLC_TICK_FROM_MS( newval.i_int );
    }
    else if( !strcmp( psz_var, CFG_MIN_STOP_START_INTERVAL ) )
    {
        p_sys->i_min_stop_start_interval = VLC_TICK_FROM_MS( newval.i_int );
    }
    else if( !strcmp( psz_var, CFG_MIN_START_STOP_INTERVAL ) )
    {
        p_sys->i_min_start_stop_interval = VLC_TICK_FROM_MS( newval.i_int );
    }
    else
    {
        vlc_assert_unreachable();
    }

    SubsdelayRecalculateDelays( (filter_t *) p_this );

    SubsdelayHeapUnlock( &p_sys->heap );
    return VLC_SUCCESS;
}
