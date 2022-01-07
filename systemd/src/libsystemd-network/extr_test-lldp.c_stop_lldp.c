
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_lldp ;


 int safe_close (int ) ;
 int sd_lldp_detach_event (int *) ;
 int sd_lldp_stop (int *) ;
 int sd_lldp_unref (int *) ;
 int * test_fd ;

__attribute__((used)) static int stop_lldp(sd_lldp *lldp) {
        int r;

        r = sd_lldp_stop(lldp);
        if (r < 0)
                return r;

        r = sd_lldp_detach_event(lldp);
        if (r < 0)
                return r;

        sd_lldp_unref(lldp);
        safe_close(test_fd[1]);

        return 0;
}
