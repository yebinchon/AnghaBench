
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_8__ {int sys; } ;


 int CommonWindowClean (int ,int *) ;
 int Direct3D9Close (TYPE_1__*) ;
 int Direct3D9Destroy (TYPE_2__*) ;
 int VLC_OBJECT (TYPE_1__*) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void Close(vout_display_t *vd)
{
    Direct3D9Close(vd);

    CommonWindowClean(VLC_OBJECT(vd), &vd->sys->sys);

    Direct3D9Destroy(vd->sys);

    free(vd->sys);
}
