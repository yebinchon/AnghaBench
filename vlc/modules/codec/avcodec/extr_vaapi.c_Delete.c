
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_va_t ;
struct TYPE_5__ {int va_pool; int vctx; } ;
typedef TYPE_2__ vlc_va_sys_t ;


 int va_pool_Close (int ) ;
 int vlc_video_context_Release (int ) ;

__attribute__((used)) static void Delete(vlc_va_t *va)
{
    vlc_va_sys_t *sys = va->sys;

    vlc_video_context_Release(sys->vctx);
    va_pool_Close(sys->va_pool);
}
