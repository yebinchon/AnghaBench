
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; int repeat; int stop; struct TYPE_3__* next; } ;
typedef int FILE ;
typedef TYPE_1__ CalendarComponent ;


 int USEC_PER_SEC ;
 int assert (int) ;
 int fprintf (int *,char*,int,...) ;
 int fputc (char,int *) ;

__attribute__((used)) static void format_chain(FILE *f, int space, const CalendarComponent *c, bool usec) {
        int d = usec ? (int) USEC_PER_SEC : 1;

        assert(f);

        if (!c) {
                fputc('*', f);
                return;
        }

        if (usec && c->start == 0 && c->repeat == USEC_PER_SEC && !c->next) {
                fputc('*', f);
                return;
        }

        assert(c->start >= 0);

        fprintf(f, "%0*i", space, c->start / d);
        if (c->start % d > 0)
                fprintf(f, ".%06i", c->start % d);

        if (c->stop > 0)
                fprintf(f, "..%0*i", space, c->stop / d);
        if (c->stop % d > 0)
                fprintf(f, ".%06i", c->stop % d);

        if (c->repeat > 0 && !(c->stop > 0 && c->repeat == d))
                fprintf(f, "/%i", c->repeat / d);
        if (c->repeat % d > 0)
                fprintf(f, ".%06i", c->repeat % d);

        if (c->next) {
                fputc(',', f);
                format_chain(f, space, c->next, usec);
        }
}
