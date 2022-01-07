
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_7__ {TYPE_4__** p_overlays; } ;
struct TYPE_9__ {TYPE_1__ bdj; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_10__ {int width; int height; int b_on_vout; int lock; } ;
typedef TYPE_4__ bluray_overlay_t ;


 int assert (int ) ;
 TYPE_4__* calloc (int,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static void blurayInitOverlay(demux_t *p_demux, int plane, int width, int height)
{
    demux_sys_t *p_sys = p_demux->p_sys;

    assert(p_sys->bdj.p_overlays[plane] == ((void*)0));

    bluray_overlay_t *ov = calloc(1, sizeof(*ov));
    if (unlikely(ov == ((void*)0)))
        return;

    ov->width = width;
    ov->height = height;
    ov->b_on_vout = 0;

    vlc_mutex_init(&ov->lock);

    p_sys->bdj.p_overlays[plane] = ov;
}
