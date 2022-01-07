
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int signal; int status; } ;
typedef TYPE_1__ ExitStatusSet ;


 int assert (TYPE_1__*) ;
 int bitmap_clear (int *) ;

void exit_status_set_free(ExitStatusSet *x) {
        assert(x);

        bitmap_clear(&x->status);
        bitmap_clear(&x->signal);
}
