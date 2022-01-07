
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int force; int no_interact; int * logger; TYPE_2__* priv; } ;
typedef TYPE_1__ vlc_object_t ;
struct TYPE_7__ {char const* typename; int * resources; int var_wait; int var_lock; int * var_root; TYPE_1__* parent; } ;
typedef TYPE_2__ vlc_object_internals_t ;


 scalar_t__ likely (int ) ;
 TYPE_2__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

int vlc_object_init(vlc_object_t *restrict obj, vlc_object_t *parent,
                    const char *typename)
{
    vlc_object_internals_t *priv = malloc(sizeof (*priv));
    if (unlikely(priv == ((void*)0)))
        return -1;

    priv->parent = parent;
    priv->typename = typename;
    priv->var_root = ((void*)0);
    vlc_mutex_init (&priv->var_lock);
    vlc_cond_init (&priv->var_wait);
    priv->resources = ((void*)0);

    obj->priv = priv;
    obj->force = 0;

    if (likely(parent != ((void*)0)))
    {
        obj->logger = parent->logger;
        obj->no_interact = parent->no_interact;
    }
    else
    {
        obj->logger = ((void*)0);
        obj->no_interact = 0;
    }

    return 0;
}
