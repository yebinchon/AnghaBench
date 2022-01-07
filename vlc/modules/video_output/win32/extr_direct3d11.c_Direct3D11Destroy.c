
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_4__ {int hd3d; } ;


 int D3D11_Destroy (int *) ;

__attribute__((used)) static void Direct3D11Destroy(vout_display_t *vd)
{

    D3D11_Destroy( &vd->sys->hd3d );

}
