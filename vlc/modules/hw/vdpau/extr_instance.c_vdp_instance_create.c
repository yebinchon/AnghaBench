
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num; int refs; int * display; int device; int vdp; int * name; int * next; } ;
typedef TYPE_1__ vdp_instance_t ;
typedef scalar_t__ VdpStatus ;


 scalar_t__ VDP_STATUS_ERROR ;
 scalar_t__ VDP_STATUS_OK ;
 scalar_t__ VDP_STATUS_RESOURCES ;
 int XCloseDisplay (int *) ;
 int XDefaultScreen (int *) ;
 int * XOpenDisplay (char const*) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memcpy (int *,char const*,size_t) ;
 int strlen (char const*) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vdp_create_x11 (int *,int,int *,int *) ;

__attribute__((used)) static VdpStatus vdp_instance_create(const char *name, int num,
                                     vdp_instance_t **pp)
{
    size_t namelen = (name != ((void*)0)) ? (strlen(name) + 1) : 0;
    vdp_instance_t *vi = malloc(sizeof (*vi) + namelen);

    if (unlikely(vi == ((void*)0)))
        return VDP_STATUS_RESOURCES;

    vi->display = XOpenDisplay(name);
    if (vi->display == ((void*)0))
    {
        free(vi);
        return VDP_STATUS_ERROR;
    }

    vi->next = ((void*)0);
    if (name != ((void*)0))
    {
        vi->name = (void *)(vi + 1);
        memcpy(vi->name, name, namelen);
    }
    else
        vi->name = ((void*)0);
    if (num >= 0)
        vi->num = num;
    else
        vi->num = XDefaultScreen(vi->display);
    vi->refs = 1;

    VdpStatus err = vdp_create_x11(vi->display, vi->num,
                                   &vi->vdp, &vi->device);
    if (err != VDP_STATUS_OK)
    {
        XCloseDisplay(vi->display);
        free(vi);
        return err;
    }
    *pp = vi;
    return VDP_STATUS_OK;
}
