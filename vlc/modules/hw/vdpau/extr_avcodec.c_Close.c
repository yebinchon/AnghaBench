
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_va_t ;
struct TYPE_6__ {scalar_t__ hwaccel_context; int vctx; } ;
typedef TYPE_2__ vlc_va_sys_t ;


 int av_free (scalar_t__) ;
 int free (TYPE_2__*) ;
 int vlc_video_context_Release (int ) ;

__attribute__((used)) static void Close(vlc_va_t *va)
{
    vlc_va_sys_t *sys = va->sys;

    vlc_video_context_Release(sys->vctx);
    if (sys->hwaccel_context)
        av_free(sys->hwaccel_context);
    free(sys);
}
