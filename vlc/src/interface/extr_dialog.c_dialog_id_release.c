
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* psz_password; TYPE_4__* psz_username; } ;
struct TYPE_8__ {TYPE_1__ login; } ;
struct TYPE_9__ {scalar_t__ i_type; TYPE_2__ u; } ;
struct TYPE_10__ {int wait; int lock; struct TYPE_10__* psz_progress_text; TYPE_3__ answer; } ;
typedef TYPE_4__ vlc_dialog_id ;


 scalar_t__ VLC_DIALOG_LOGIN ;
 int free (TYPE_4__*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static void
dialog_id_release(vlc_dialog_id *p_id)
{
    if (p_id->answer.i_type == VLC_DIALOG_LOGIN)
    {
        free(p_id->answer.u.login.psz_username);
        free(p_id->answer.u.login.psz_password);
    }
    free(p_id->psz_progress_text);
    vlc_mutex_destroy(&p_id->lock);
    vlc_cond_destroy(&p_id->wait);
    free(p_id);
}
