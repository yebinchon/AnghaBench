
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_6__ {int p_data; } ;
typedef TYPE_2__ filter_sys_t ;


 int Close (TYPE_1__* const,TYPE_2__* const) ;
 int FilterCallback ;
 unsigned int NUM_ADJUST_MODES ;
 int * adjust_params_names ;
 int free (int ) ;
 int var_DelCallback (int *,int ,int ,int ) ;
 int var_Destroy (int *,int ) ;

__attribute__((used)) static void
CloseAdjust(vlc_object_t * obj)
{
    filter_t *const filter = (filter_t *)obj;
    filter_sys_t *const filter_sys = filter->p_sys;

    for (unsigned int i = 0; i < NUM_ADJUST_MODES; ++i)
    {
        var_DelCallback(obj, adjust_params_names[i],
                        FilterCallback, filter_sys->p_data);
        var_Destroy(obj, adjust_params_names[i]);
    }
    free(filter_sys->p_data);
    Close(filter, filter_sys);
}
