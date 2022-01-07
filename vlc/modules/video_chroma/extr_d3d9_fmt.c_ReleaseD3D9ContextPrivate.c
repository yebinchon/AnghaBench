
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
typedef TYPE_1__ d3d9_video_context_t ;


 int IDirect3DDevice9_Release (int ) ;

__attribute__((used)) static void ReleaseD3D9ContextPrivate(void *private)
{
    d3d9_video_context_t *octx = private;
    IDirect3DDevice9_Release(octx->dev);
}
