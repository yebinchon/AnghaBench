
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int display; int vdp; int device; } ;
typedef TYPE_1__ vdp_instance_t ;


 int XCloseDisplay (int ) ;
 int free (TYPE_1__*) ;
 int vdp_destroy_x11 (int ) ;
 int vdp_device_destroy (int ,int ) ;

__attribute__((used)) static void vdp_instance_destroy(vdp_instance_t *vi)
{
    vdp_device_destroy(vi->vdp, vi->device);
    vdp_destroy_x11(vi->vdp);
    XCloseDisplay(vi->display);
    free(vi);
}
