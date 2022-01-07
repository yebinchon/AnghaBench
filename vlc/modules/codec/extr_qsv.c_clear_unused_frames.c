
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* work_frames; } ;
typedef TYPE_3__ encoder_sys_t ;
struct TYPE_6__ {int Locked; } ;
struct TYPE_7__ {TYPE_1__ Data; } ;
struct TYPE_9__ {struct TYPE_9__* next; scalar_t__ used; int pic; TYPE_2__ surface; } ;
typedef TYPE_4__ QSVFrame ;


 int picture_Release (int ) ;

__attribute__((used)) static void clear_unused_frames(encoder_sys_t *sys)
{
    QSVFrame *cur = sys->work_frames;
    while (cur) {
        if (cur->used && !cur->surface.Data.Locked) {
            picture_Release(cur->pic);
            cur->used = 0;
        }
        cur = cur->next;
    }
}
