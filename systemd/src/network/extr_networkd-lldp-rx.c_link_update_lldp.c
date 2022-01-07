
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int lldp; } ;
typedef TYPE_1__ Link ;


 int IFF_UP ;
 int assert (TYPE_1__*) ;
 int log_link_debug (TYPE_1__*,char*) ;
 int log_link_warning_errno (TYPE_1__*,int,char*) ;
 int sd_lldp_start (int ) ;
 int sd_lldp_stop (int ) ;

int link_update_lldp(Link *link) {
        int r;

        assert(link);

        if (!link->lldp)
                return 0;

        if (link->flags & IFF_UP) {
                r = sd_lldp_start(link->lldp);
                if (r < 0)
                        return log_link_warning_errno(link, r, "Failed to start LLDP: %m");
                if (r > 0)
                        log_link_debug(link, "Started LLDP.");
        } else {
                r = sd_lldp_stop(link->lldp);
                if (r < 0)
                        return log_link_warning_errno(link, r, "Failed to stop LLDP: %m");
                if (r > 0)
                        log_link_debug(link, "Stopped LLDP.");
        }

        return r;
}
