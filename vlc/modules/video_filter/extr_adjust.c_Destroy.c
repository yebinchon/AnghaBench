
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * p_sys; } ;
typedef TYPE_1__ filter_t ;
typedef int filter_sys_t ;


 int AdjustCallback ;
 int free (int *) ;
 int var_DelCallback (TYPE_1__*,char*,int ,int *) ;

__attribute__((used)) static void Destroy( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    var_DelCallback( p_filter, "contrast", AdjustCallback, p_sys );
    var_DelCallback( p_filter, "brightness", AdjustCallback, p_sys );
    var_DelCallback( p_filter, "hue", AdjustCallback, p_sys );
    var_DelCallback( p_filter, "saturation", AdjustCallback, p_sys );
    var_DelCallback( p_filter, "gamma", AdjustCallback, p_sys );
    var_DelCallback( p_filter, "brightness-threshold",
                                             AdjustCallback, p_sys );

    free( p_sys );
}
