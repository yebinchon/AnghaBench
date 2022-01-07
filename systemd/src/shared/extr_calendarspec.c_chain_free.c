
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ CalendarComponent ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void chain_free(CalendarComponent *c) {
        CalendarComponent *n;

        while (c) {
                n = c->next;
                free(c);
                c = n;
        }
}
