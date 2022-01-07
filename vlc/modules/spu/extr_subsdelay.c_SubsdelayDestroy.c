
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_8__ {int heap; } ;
typedef TYPE_2__ filter_sys_t ;


 int CFG_FACTOR ;
 int CFG_MIN_ALPHA ;
 int CFG_MIN_START_STOP_INTERVAL ;
 int CFG_MIN_STOPS_INTERVAL ;
 int CFG_MIN_STOP_START_INTERVAL ;
 int CFG_MODE ;
 int CFG_OVERLAP ;
 int SubsdelayCallback ;
 int SubsdelayHeapDestroy (int *) ;
 int free (TYPE_2__*) ;
 int var_DelCallback (TYPE_1__*,int ,int ,TYPE_2__*) ;
 int var_Destroy (TYPE_1__*,int ) ;

__attribute__((used)) static void SubsdelayDestroy( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *) p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    SubsdelayHeapDestroy( &p_sys->heap );



    var_DelCallback( p_filter, CFG_MODE, SubsdelayCallback, p_sys );
    var_Destroy( p_filter, CFG_MODE );

    var_DelCallback( p_filter, CFG_FACTOR, SubsdelayCallback, p_sys );
    var_Destroy( p_filter, CFG_FACTOR );

    var_DelCallback( p_filter, CFG_OVERLAP, SubsdelayCallback, p_sys );
    var_Destroy( p_filter, CFG_OVERLAP );

    var_DelCallback( p_filter, CFG_MIN_ALPHA, SubsdelayCallback, p_sys );
    var_Destroy( p_filter, CFG_MIN_ALPHA );

    var_DelCallback( p_filter, CFG_MIN_STOPS_INTERVAL, SubsdelayCallback, p_sys );
    var_Destroy( p_filter, CFG_MIN_STOPS_INTERVAL );

    var_DelCallback( p_filter, CFG_MIN_STOP_START_INTERVAL, SubsdelayCallback, p_sys );
    var_Destroy( p_filter, CFG_MIN_STOP_START_INTERVAL );

    var_DelCallback( p_filter, CFG_MIN_START_STOP_INTERVAL, SubsdelayCallback, p_sys );
    var_Destroy( p_filter, CFG_MIN_START_STOP_INTERVAL );

    free( p_sys );
}
