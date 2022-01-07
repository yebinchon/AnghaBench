
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dev; } ;
typedef TYPE_1__ d3d9_device_t ;


 int IDirect3DDevice9_Release (int *) ;

void D3D9_ReleaseDevice(d3d9_device_t *d3d_dev)
{
    if (d3d_dev->dev)
    {
       IDirect3DDevice9_Release(d3d_dev->dev);
       d3d_dev->dev = ((void*)0);
    }
}
