
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vdp_t ;
struct TYPE_6__ {int device; int * vdp; struct TYPE_6__* next; } ;
typedef TYPE_1__ vdp_instance_t ;
typedef scalar_t__ VdpStatus ;
typedef int VdpDevice ;


 scalar_t__ VDP_STATUS_ERROR ;
 scalar_t__ VDP_STATUS_OK ;
 scalar_t__ VDP_STATUS_RESOURCES ;
 char* getenv (char*) ;
 TYPE_1__* list ;
 int lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vdp_instance_create (char const*,int,TYPE_1__**) ;
 int vdp_instance_destroy (TYPE_1__*) ;
 TYPE_1__* vdp_instance_lookup (char const*,int) ;

VdpStatus vdp_get_x11(const char *display_name, int snum,
                      vdp_t **restrict vdpp, VdpDevice *restrict devicep)
{
    vdp_instance_t *vi, *vi2;
    VdpStatus err = VDP_STATUS_RESOURCES;

    if (display_name == ((void*)0))
    {
        display_name = getenv("DISPLAY");
        if (display_name == ((void*)0))
            return VDP_STATUS_ERROR;
    }

    pthread_mutex_lock(&lock);
    vi = vdp_instance_lookup(display_name, snum);
    pthread_mutex_unlock(&lock);
    if (vi != ((void*)0))
        goto found;

    err = vdp_instance_create(display_name, snum, &vi);
    if (err != VDP_STATUS_OK)
        return err;

    pthread_mutex_lock(&lock);
    vi2 = vdp_instance_lookup(display_name, snum);
    if (unlikely(vi2 != ((void*)0)))
    {
        pthread_mutex_unlock(&lock);
        vdp_instance_destroy(vi);
        vi = vi2;
    }
    else
    {
        vi->next = list;
        list = vi;
        pthread_mutex_unlock(&lock);
    }
found:
    *vdpp = vi->vdp;
    *devicep = vi->device;
    return VDP_STATUS_OK;
}
