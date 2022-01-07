
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
typedef TYPE_1__ d3d11_video_context_t ;


 int ID3D11DeviceContext_Release (int ) ;

__attribute__((used)) static void ReleaseD3D11ContextPrivate(void *private)
{
    d3d11_video_context_t *octx = private;
    ID3D11DeviceContext_Release(octx->device);
}
