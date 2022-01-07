
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_5__ {int i_attachment; TYPE_1__* p_item; int * attachment; } ;
typedef TYPE_2__ input_thread_private_t ;
typedef int input_attachment_t ;
struct TYPE_4__ {int lock; } ;


 TYPE_2__* input_priv (int *) ;
 int ** vlc_alloc (int,int) ;
 int * vlc_input_attachment_Duplicate (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int input_GetAttachments(input_thread_t *input,
                         input_attachment_t ***attachments)
{
    input_thread_private_t *priv = input_priv(input);

    vlc_mutex_lock(&priv->p_item->lock);
    int attachments_count = priv->i_attachment;
    if (attachments_count <= 0)
    {
        vlc_mutex_unlock(&priv->p_item->lock);
        *attachments = ((void*)0);
        return 0;
    }

    *attachments = vlc_alloc(attachments_count, sizeof(input_attachment_t*));
    if (!*attachments)
        return -1;

    for (int i = 0; i < attachments_count; i++)
        (*attachments)[i] = vlc_input_attachment_Duplicate(priv->attachment[i]);

    vlc_mutex_unlock(&priv->p_item->lock);
    return attachments_count;
}
