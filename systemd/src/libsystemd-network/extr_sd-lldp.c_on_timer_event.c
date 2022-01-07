
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_lldp ;
typedef int sd_event_source ;


 int lldp_make_space (int *,int ) ;
 int lldp_start_timer (int *,int *) ;
 int log_lldp_errno (int,char*) ;

__attribute__((used)) static int on_timer_event(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_lldp *lldp = userdata;
        int r;

        r = lldp_make_space(lldp, 0);
        if (r < 0)
                return log_lldp_errno(r, "Failed to make space: %m");

        r = lldp_start_timer(lldp, ((void*)0));
        if (r < 0)
                return log_lldp_errno(r, "Failed to restart timer: %m");

        return 0;
}
