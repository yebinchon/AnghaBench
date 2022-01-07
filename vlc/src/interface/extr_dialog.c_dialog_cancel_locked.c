
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* pf_cancel ) (int ,TYPE_3__*) ;} ;
struct TYPE_8__ {int p_cbs_data; TYPE_1__ cbs; } ;
typedef TYPE_2__ vlc_dialog_provider ;
struct TYPE_9__ {int b_cancelled; int lock; scalar_t__ b_answered; } ;
typedef TYPE_3__ vlc_dialog_id ;


 int stub1 (int ,TYPE_3__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void
dialog_cancel_locked(vlc_dialog_provider *p_provider, vlc_dialog_id *p_id)
{
    vlc_mutex_lock(&p_id->lock);
    if (p_id->b_cancelled || p_id->b_answered)
    {
        vlc_mutex_unlock(&p_id->lock);
        return;
    }
    p_id->b_cancelled = 1;
    vlc_mutex_unlock(&p_id->lock);

    p_provider->cbs.pf_cancel(p_provider->p_cbs_data, p_id);
}
