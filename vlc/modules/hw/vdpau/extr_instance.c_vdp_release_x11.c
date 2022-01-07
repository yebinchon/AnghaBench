
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdp_t ;
struct TYPE_4__ {scalar_t__ refs; struct TYPE_4__* next; int * vdp; } ;
typedef TYPE_1__ vdp_instance_t ;


 int assert (int) ;
 TYPE_1__* list ;
 int lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vdp_instance_destroy (TYPE_1__*) ;

void vdp_release_x11(vdp_t *vdp)
{
    vdp_instance_t *vi, **pp = &list;

    pthread_mutex_lock(&lock);
    for (;;)
    {
        vi = *pp;
        assert(vi != ((void*)0));
        if (vi->vdp == vdp)
            break;
        pp = &vi->next;
    }

    assert(vi->refs > 0);
    vi->refs--;
    if (vi->refs > 0)
        vi = ((void*)0);
    else
        *pp = vi->next;
    pthread_mutex_unlock(&lock);

    if (vi != ((void*)0))
        vdp_instance_destroy(vi);
}
