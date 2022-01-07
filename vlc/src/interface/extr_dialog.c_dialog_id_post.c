
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dialog_answer {int dummy; } ;
struct TYPE_4__ {int b_cancelled; int b_answered; scalar_t__ i_refcount; int lock; int wait; struct dialog_answer answer; } ;
typedef TYPE_1__ vlc_dialog_id ;


 int VLC_SUCCESS ;
 int dialog_id_release (TYPE_1__*) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int
dialog_id_post(vlc_dialog_id *p_id, struct dialog_answer *p_answer)
{
    vlc_mutex_lock(&p_id->lock);
    if (p_answer == ((void*)0))
    {
        p_id->b_cancelled = 1;
    }
    else
    {
        p_id->answer = *p_answer;
        p_id->b_answered = 1;
    }
    p_id->i_refcount--;
    if (p_id->i_refcount > 0)
    {
        vlc_cond_signal(&p_id->wait);
        vlc_mutex_unlock(&p_id->lock);
    }
    else
    {
        vlc_mutex_unlock(&p_id->lock);
        dialog_id_release(p_id);
    }
    return VLC_SUCCESS;
}
