
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instance {scalar_t__ pidfile; } ;


 int log_deinit () ;
 int nc_print_done () ;
 int nc_remove_pidfile (struct instance*) ;
 int signal_deinit () ;

__attribute__((used)) static void
nc_post_run(struct instance *nci)
{
    if (nci->pidfile) {
        nc_remove_pidfile(nci);
    }

    signal_deinit();

    nc_print_done();

    log_deinit();
}
