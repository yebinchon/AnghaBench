
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_netlink_message ;
typedef int sd_netlink ;


 int assert_se (int) ;
 int log_info_errno (int,char*,int) ;
 int sd_netlink_message_get_errno (int *) ;

__attribute__((used)) static int pipe_handler(sd_netlink *rtnl, sd_netlink_message *m, void *userdata) {
        int *counter = userdata;
        int r;

        (*counter)--;

        r = sd_netlink_message_get_errno(m);

        log_info_errno(r, "%d left in pipe. got reply: %m", *counter);

        assert_se(r >= 0);

        return 1;
}
