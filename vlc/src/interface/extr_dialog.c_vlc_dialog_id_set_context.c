
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; void* p_context; } ;
typedef TYPE_1__ vlc_dialog_id ;


 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void
vlc_dialog_id_set_context(vlc_dialog_id *p_id, void *p_context)
{
    vlc_mutex_lock(&p_id->lock);
    p_id->p_context = p_context;
    vlc_mutex_unlock(&p_id->lock);
}
