
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p; } ;
typedef TYPE_1__ spu_t ;
struct TYPE_5__ {char const* source_chain_update; char const* source_chain_current; int lock; } ;
typedef TYPE_2__ spu_private_t ;


 int free (char const*) ;
 void* strdup (char const*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void spu_ChangeSources(spu_t *spu, const char *filters)
{
    spu_private_t *sys = spu->p;

    vlc_mutex_lock(&sys->lock);

    free(sys->source_chain_update);
    if (filters)
    {
        sys->source_chain_update = strdup(filters);
        free(sys->source_chain_current);
        sys->source_chain_current = strdup(filters);
    }
    else if (sys->source_chain_current)
        sys->source_chain_update = strdup(sys->source_chain_current);

    vlc_mutex_unlock(&sys->lock);
}
