
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dialog_array; } ;
typedef TYPE_1__ vlc_dialog_provider ;
struct TYPE_9__ {int i_type; int i_refcount; int wait; int lock; } ;
typedef TYPE_2__ vlc_dialog_id ;
typedef enum dialog_type { ____Placeholder_dialog_type } dialog_type ;


 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;
 scalar_t__ vlc_array_append (int *,TYPE_2__*) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static vlc_dialog_id *
dialog_add_locked(vlc_dialog_provider *p_provider, enum dialog_type i_type)
{
    vlc_dialog_id *p_id = calloc(1, sizeof(*p_id));

    if (p_id == ((void*)0))
        return ((void*)0);

    if(vlc_array_append(&p_provider->dialog_array, p_id))
    {
        free(p_id);
        return ((void*)0);
    }

    vlc_mutex_init(&p_id->lock);
    vlc_cond_init(&p_id->wait);

    p_id->i_type = i_type;
    p_id->i_refcount = 2;

    return p_id;
}
