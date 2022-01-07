
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int workaround; int surface; int * cfg; } ;
struct TYPE_8__ {TYPE_1__ hw; TYPE_2__* selected_decoder; int hw_surface; int cfg; } ;
typedef TYPE_3__ vlc_va_sys_t ;
struct TYPE_9__ {TYPE_1__* hwaccel_context; } ;
struct TYPE_7__ {int workaround; } ;
typedef TYPE_4__ AVCodecContext ;



__attribute__((used)) static void SetupAVCodecContext(void *opaque, AVCodecContext *avctx)
{
    vlc_va_sys_t *sys = opaque;
    sys->hw.cfg = &sys->cfg;
    sys->hw.surface = sys->hw_surface;
    sys->hw.workaround = sys->selected_decoder->workaround;
    avctx->hwaccel_context = &sys->hw;
}
