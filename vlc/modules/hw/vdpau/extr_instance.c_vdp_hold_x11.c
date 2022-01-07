
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vdp_t ;
struct TYPE_3__ {scalar_t__ refs; int device; struct TYPE_3__* next; int * vdp; } ;
typedef TYPE_1__ vdp_instance_t ;
typedef int VdpDevice ;


 scalar_t__ UINTPTR_MAX ;
 int assert (int) ;
 TYPE_1__* list ;
 int lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

vdp_t *vdp_hold_x11(vdp_t *vdp, VdpDevice *restrict devp)
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

    assert(vi->refs < UINTPTR_MAX);
    vi->refs++;
    pthread_mutex_unlock(&lock);

    if (devp != ((void*)0))
        *devp = vi->device;
   return vdp;
}
