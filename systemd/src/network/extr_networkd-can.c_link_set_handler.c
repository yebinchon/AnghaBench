
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_netlink_message ;
typedef int sd_netlink ;
typedef int Link ;


 int EEXIST ;
 int assert (int *) ;
 int link_enter_failed (int *) ;
 int log_link_debug (int *,char*) ;
 int log_link_error_errno (int *,int,char*) ;
 int sd_netlink_message_get_errno (int *) ;

__attribute__((used)) static int link_set_handler(sd_netlink *rtnl, sd_netlink_message *m, Link *link) {
        int r;

        assert(link);

        log_link_debug(link, "Set link");

        r = sd_netlink_message_get_errno(m);
        if (r < 0 && r != -EEXIST) {
                log_link_error_errno(link, r, "Failed to configure CAN link: %m");
                link_enter_failed(link);
        }

        return 1;
}
