
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_6__ {int i_attachment; TYPE_1__* p_item; TYPE_3__** attachment; } ;
typedef TYPE_2__ input_thread_private_t ;
typedef int input_attachment_t ;
struct TYPE_7__ {int psz_name; } ;
struct TYPE_5__ {int lock; } ;


 TYPE_2__* input_priv (int *) ;
 int strcmp (int ,char const*) ;
 int * vlc_input_attachment_Duplicate (TYPE_3__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

input_attachment_t *input_GetAttachment(input_thread_t *input, const char *name)
{
    input_thread_private_t *priv = input_priv(input);

    vlc_mutex_lock(&priv->p_item->lock);
    for (int i = 0; i < priv->i_attachment; i++)
    {
        if (!strcmp( priv->attachment[i]->psz_name, name))
        {
            input_attachment_t *attachment =
                vlc_input_attachment_Duplicate(priv->attachment[i] );
            vlc_mutex_unlock( &priv->p_item->lock );
            return attachment;
        }
    }
    vlc_mutex_unlock( &priv->p_item->lock );
    return ((void*)0);
}
