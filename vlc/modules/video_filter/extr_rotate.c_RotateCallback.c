
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f_float; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;
typedef int filter_sys_t ;


 int VLC_SUCCESS ;
 int store_trigo (int *,int ) ;

__attribute__((used)) static int RotateCallback( vlc_object_t *p_this, char const *psz_var,
                           vlc_value_t oldval, vlc_value_t newval, void *data )
{
    filter_sys_t *p_sys = data;

    store_trigo( p_sys, newval.f_float );
    (void) p_this; (void) psz_var; (void) oldval;
    return VLC_SUCCESS;
}
