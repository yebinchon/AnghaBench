
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * pf_update_progress; int * pf_cancel; int * pf_display_progress; int * pf_display_question; int * pf_display_login; int * pf_display_error; } ;
typedef TYPE_2__ vlc_dialog_cbs ;
typedef int libvlc_int_t ;
struct TYPE_12__ {int * pf_update_progress; int * pf_cancel; int * pf_display_progress; int * pf_display_question; int pf_display_login; int * pf_display_error; } ;
struct TYPE_9__ {void* data; TYPE_4__ cbs; } ;
struct TYPE_11__ {int instance_lock; TYPE_1__ dialog; int * p_libvlc_int; } ;
typedef TYPE_3__ libvlc_instance_t ;
typedef TYPE_4__ libvlc_dialog_cbs ;


 int * cancel_cb ;
 int * display_error_cb ;
 int * display_login_cb ;
 int * display_progress_cb ;
 int * display_question_cb ;
 int * update_progress_cb ;
 int vlc_dialog_provider_set_callbacks (int *,TYPE_2__ const*,TYPE_3__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void
libvlc_dialog_set_callbacks(libvlc_instance_t *p_instance,
                            const libvlc_dialog_cbs *p_cbs, void *p_data)
{
    libvlc_int_t *p_libvlc = p_instance->p_libvlc_int;

    vlc_mutex_lock(&p_instance->instance_lock);
    if (p_cbs != ((void*)0))
    {
        const vlc_dialog_cbs dialog_cbs = {
            .pf_display_error = p_cbs->pf_display_error != ((void*)0) ?
                                display_error_cb : ((void*)0),
            .pf_display_login = p_cbs->pf_display_login ?
                                display_login_cb : ((void*)0),
            .pf_display_question = p_cbs->pf_display_question != ((void*)0) ?
                                   display_question_cb : ((void*)0),
            .pf_display_progress = p_cbs->pf_display_progress != ((void*)0) ?
                                   display_progress_cb : ((void*)0),
            .pf_cancel = p_cbs->pf_cancel != ((void*)0) ? cancel_cb : ((void*)0),
            .pf_update_progress = p_cbs->pf_update_progress != ((void*)0) ?
                                  update_progress_cb : ((void*)0),
        };

        p_instance->dialog.cbs = *p_cbs;
        p_instance->dialog.data = p_data;

        vlc_dialog_provider_set_callbacks(p_libvlc, &dialog_cbs, p_instance);
    }
    else
        vlc_dialog_provider_set_callbacks(p_libvlc, ((void*)0), ((void*)0));
    vlc_mutex_unlock(&p_instance->instance_lock);
}
