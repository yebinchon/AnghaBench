
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;


 int var_TriggerCallback (int *,char*) ;

void vout_IntfReinit( vout_thread_t *p_vout )
{
    var_TriggerCallback( p_vout, "video-on-top" );
    var_TriggerCallback( p_vout, "video-wallpaper" );

    var_TriggerCallback( p_vout, "video-filter" );
    var_TriggerCallback( p_vout, "sub-source" );
    var_TriggerCallback( p_vout, "sub-filter" );
    var_TriggerCallback( p_vout, "sub-margin" );
    var_TriggerCallback( p_vout, "secondary-sub-margin" );
}
