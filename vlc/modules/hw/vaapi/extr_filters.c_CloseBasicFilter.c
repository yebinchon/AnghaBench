
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int psz_name; } ;
struct basic_filter_data {TYPE_1__ sigma; } ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_8__ {struct basic_filter_data* p_data; } ;
typedef TYPE_3__ filter_sys_t ;


 int Close (TYPE_2__* const,TYPE_3__* const) ;
 int FilterCallback ;
 int free (struct basic_filter_data* const) ;
 int var_DelCallback (int *,int ,int ,struct basic_filter_data* const) ;
 int var_Destroy (int *,int ) ;

__attribute__((used)) static void
CloseBasicFilter(vlc_object_t * obj)
{
    filter_t *const filter = (filter_t *)obj;
    filter_sys_t *const filter_sys = filter->p_sys;
    struct basic_filter_data *const p_data = filter_sys->p_data;

    var_DelCallback(obj, p_data->sigma.psz_name, FilterCallback, p_data);
    var_Destroy(obj, p_data->sigma.psz_name);
    free(p_data);
    Close(filter, filter_sys);
}
