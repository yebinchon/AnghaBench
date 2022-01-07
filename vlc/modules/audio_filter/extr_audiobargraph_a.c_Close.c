
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* first; } ;
typedef TYPE_2__ filter_sys_t ;
typedef TYPE_2__ ValueDate_t ;


 int * VLC_OBJECT (int ) ;
 int free (TYPE_2__*) ;
 int var_Destroy (int *,char*) ;
 int vlc_object_instance (TYPE_1__*) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    filter_t * p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;
    vlc_object_t *vlc = VLC_OBJECT(vlc_object_instance(p_filter));

    var_Destroy(vlc, "audiobargraph_v-i_values");
    var_Destroy(vlc, "audiobargraph_v-alarm");

    while (p_sys->first != ((void*)0)) {
        ValueDate_t *current = p_sys->first;
        p_sys->first = p_sys->first->next;
        free(current);
    }
    free(p_sys);
}
