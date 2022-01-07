
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_lldp_neighbor ;
typedef scalar_t__ sd_lldp_event ;
typedef int sd_lldp ;
typedef int Link ;


 scalar_t__ SD_LLDP_EVENT_ADDED ;
 int assert (int *) ;
 scalar_t__ link_lldp_emit_enabled (int *) ;
 int link_lldp_emit_start (int *) ;
 int link_lldp_save (int *) ;
 int log_link_debug (int *,char*) ;
 int log_link_warning_errno (int *,int,char*) ;

__attribute__((used)) static void lldp_handler(sd_lldp *lldp, sd_lldp_event event, sd_lldp_neighbor *n, void *userdata) {
        Link *link = userdata;
        int r;

        assert(link);

        (void) link_lldp_save(link);

        if (link_lldp_emit_enabled(link) && event == SD_LLDP_EVENT_ADDED) {


                log_link_debug(link, "Received LLDP datagram from previously unknown neighbor, restarting 'fast' LLDP transmission.");

                r = link_lldp_emit_start(link);
                if (r < 0)
                        log_link_warning_errno(link, r, "Failed to restart LLDP transmission: %m");
        }
}
