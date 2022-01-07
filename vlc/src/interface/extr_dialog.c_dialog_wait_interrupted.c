
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ vlc_dialog_provider ;
struct TYPE_6__ {int lock; int wait; } ;
typedef TYPE_2__ vlc_dialog_id ;
struct dialog_i11e_context {TYPE_2__* p_id; TYPE_1__* p_provider; } ;


 int dialog_cancel_locked (TYPE_1__*,TYPE_2__*) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void
dialog_wait_interrupted(void *p_data)
{
    struct dialog_i11e_context *p_context = p_data;
    vlc_dialog_provider *p_provider = p_context->p_provider;
    vlc_dialog_id *p_id = p_context->p_id;

    vlc_mutex_lock(&p_provider->lock);
    dialog_cancel_locked(p_provider, p_id);
    vlc_mutex_unlock(&p_provider->lock);

    vlc_mutex_lock(&p_id->lock);
    vlc_cond_signal(&p_id->wait);
    vlc_mutex_unlock(&p_id->lock);
}
