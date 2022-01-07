
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * d3dcontext; } ;
typedef TYPE_1__ d3d11_device_t ;
struct TYPE_6__ {int * d3dcontext; } ;


 int D3D11_ReleaseDevice (TYPE_1__*) ;
 int assert (int) ;
 TYPE_2__ device ;
 int inst_lock ;
 scalar_t__ instances ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void D3D11_FilterReleaseInstance(d3d11_device_t *d3d_dev)
{
    vlc_mutex_lock(&inst_lock);
    if (d3d_dev->d3dcontext && d3d_dev->d3dcontext == device.d3dcontext)
    {
        assert(instances != 0);
        if (--instances == 0)
            device.d3dcontext = ((void*)0);
    }
    D3D11_ReleaseDevice(d3d_dev);
    vlc_mutex_unlock(&inst_lock);
}
