
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sd_netlink ;
typedef int sd_event_source ;


 int assert (int *) ;
 int sd_netlink_process (int *,int *) ;

__attribute__((used)) static int io_callback(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        sd_netlink *rtnl = userdata;
        int r;

        assert(rtnl);

        r = sd_netlink_process(rtnl, ((void*)0));
        if (r < 0)
                return r;

        return 1;
}
