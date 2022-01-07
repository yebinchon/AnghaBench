
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ barriers; int pipe; void* them; void* me; } ;
typedef TYPE_1__ Barrier ;


 void* safe_close (void*) ;
 int safe_close_pair (int ) ;

void barrier_destroy(Barrier *b) {
        if (!b)
                return;

        b->me = safe_close(b->me);
        b->them = safe_close(b->them);
        safe_close_pair(b->pipe);
        b->barriers = 0;
}
