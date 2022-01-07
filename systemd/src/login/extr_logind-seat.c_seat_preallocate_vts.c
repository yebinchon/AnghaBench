
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int n_autovts; struct TYPE_5__* manager; } ;
typedef TYPE_1__ Seat ;


 int assert (TYPE_1__*) ;
 int log_debug (char*) ;
 int log_error_errno (int,char*,unsigned int) ;
 int seat_has_vts (TYPE_1__*) ;
 int vt_allocate (unsigned int) ;

int seat_preallocate_vts(Seat *s) {
        int r = 0;
        unsigned i;

        assert(s);
        assert(s->manager);

        if (s->manager->n_autovts <= 0)
                return 0;

        if (!seat_has_vts(s))
                return 0;

        log_debug("Preallocating VTs...");

        for (i = 1; i <= s->manager->n_autovts; i++) {
                int q;

                q = vt_allocate(i);
                if (q < 0)
                        r = log_error_errno(q, "Failed to preallocate VT %u: %m", i);
        }

        return r;
}
