
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; int stop; struct TYPE_3__* next; } ;
typedef TYPE_1__ CalendarComponent ;



__attribute__((used)) static void fix_year(CalendarComponent *c) {


        while (c) {
                if (c->start >= 0 && c->start < 70)
                        c->start += 2000;

                if (c->stop >= 0 && c->stop < 70)
                        c->stop += 2000;

                if (c->start >= 70 && c->start < 100)
                        c->start += 1900;

                if (c->stop >= 70 && c->stop < 100)
                        c->stop += 1900;

                c = c->next;
        }
}
