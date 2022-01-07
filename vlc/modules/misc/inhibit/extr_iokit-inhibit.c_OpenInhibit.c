
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int inhibit; TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_5__ {void* inh_assertion_id; void* act_assertion_id; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;


 int UpdateInhibit ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 void* kIOPMNullAssertionID ;
 scalar_t__ unlikely (int ) ;
 TYPE_2__* vlc_obj_malloc (int *,int) ;

__attribute__((used)) static int OpenInhibit(vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;


    vlc_inhibit_sys_t *sys = ih->p_sys =
            vlc_obj_malloc(obj, sizeof(vlc_inhibit_sys_t));
    if (unlikely(ih->p_sys == ((void*)0)))
        return VLC_ENOMEM;

    sys->act_assertion_id = kIOPMNullAssertionID;
    sys->inh_assertion_id = kIOPMNullAssertionID;

    ih->inhibit = UpdateInhibit;
    return VLC_SUCCESS;
}
