
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int b_cancelled; int lock; } ;
typedef TYPE_1__ vlc_dialog_id ;


 int assert (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

bool
vlc_dialog_is_cancelled(vlc_object_t *p_obj, vlc_dialog_id *p_id)
{
    (void) p_obj;
    assert(p_id != ((void*)0));

    vlc_mutex_lock(&p_id->lock);
    bool b_cancelled = p_id->b_cancelled;
    vlc_mutex_unlock(&p_id->lock);
    return b_cancelled;
}
