
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ vdp_t ;


 int dlclose (int ) ;
 int free (TYPE_1__*) ;

void vdp_destroy_x11(vdp_t *vdp)
{
    dlclose(vdp->handle);
    free(vdp);
}
