
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct vlc_h2_frame* first; } ;
struct TYPE_3__ {struct vlc_h2_frame* first; } ;
struct vlc_h2_output {TYPE_2__ queue; TYPE_1__ prio; } ;
struct vlc_h2_frame {struct vlc_h2_frame* next; } ;


 int free (struct vlc_h2_frame*) ;

__attribute__((used)) static void vlc_h2_output_flush_unlocked(struct vlc_h2_output *out)
{
    for (struct vlc_h2_frame *f = out->prio.first, *n; f != ((void*)0); f = n)
    {
        n = f->next;
        free(f);
    }
    for (struct vlc_h2_frame *f = out->queue.first, *n; f != ((void*)0); f = n)
    {
        n = f->next;
        free(f);
    }
}
