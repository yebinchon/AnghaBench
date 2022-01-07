
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_7__ {int sys; int p_sensors; } ;


 int CommonWindowClean (int ,int *) ;
 int Direct3D11Close (TYPE_2__*) ;
 int Direct3D11Destroy (TYPE_2__*) ;
 int UnhookWindowsSensors (int ) ;
 int VLC_OBJECT (TYPE_2__*) ;

__attribute__((used)) static void Close(vout_display_t *vd)
{
    Direct3D11Close(vd);
    UnhookWindowsSensors(vd->sys->p_sensors);

    CommonWindowClean(VLC_OBJECT(vd), &vd->sys->sys);

    Direct3D11Destroy(vd);
}
