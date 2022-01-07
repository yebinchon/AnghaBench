
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* work_frames; } ;
typedef TYPE_1__ encoder_sys_t ;
struct TYPE_8__ {int used; struct TYPE_8__* next; } ;
typedef TYPE_2__ QSVFrame ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_2__* calloc (int,int) ;
 int clear_unused_frames (TYPE_1__*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int get_free_frame(encoder_sys_t *sys, QSVFrame **out)
{
    QSVFrame *frame, **last;

    clear_unused_frames(sys);

    frame = sys->work_frames;
    last = &sys->work_frames;
    while (frame) {
        if (!frame->used) {
            *out = frame;
            frame->used = 1;
            return VLC_SUCCESS;
        }

        last = &frame->next;
        frame = frame->next;
    }

    frame = calloc(1,sizeof(QSVFrame));
    if (unlikely(frame==((void*)0)))
        return VLC_ENOMEM;
    *last = frame;

    *out = frame;
    frame->used = 1;

    return VLC_SUCCESS;
}
