
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int sd_netlink_message ;
typedef int sd_netlink ;


 int EPERM ;
 int EXIT_SUCCESS ;
 int IFLA_IFNAME ;
 scalar_t__ RTM_GETLINK ;
 scalar_t__ RTM_NEWLINK ;
 int assert_se (int) ;
 scalar_t__ if_nametoindex (char*) ;
 int sd_netlink_call (int *,int *,int,int **) ;
 scalar_t__ sd_netlink_message_get_type (int *,scalar_t__*) ;
 int sd_netlink_message_read_string (int *,int ,char const**) ;
 int * sd_netlink_message_unref (int *) ;
 scalar_t__ sd_netlink_open (int **) ;
 int * sd_netlink_unref (int *) ;
 scalar_t__ sd_rtnl_message_new_link (int *,int **,scalar_t__,int) ;
 int test_address_get (int *,int) ;
 int test_array () ;
 int test_async (int) ;
 int test_async_destroy_callback (int) ;
 int test_container (int *) ;
 int test_event_loop (int) ;
 int test_get_addresses (int *) ;
 int test_link_configure (int *,int) ;
 int test_link_get (int *,int) ;
 int test_match () ;
 int test_message (int *) ;
 int test_message_link_bridge (int *) ;
 int test_multiple () ;
 int test_pipe (int) ;
 int test_route (int *) ;
 int test_slot_set (int) ;

int main(void) {
        sd_netlink *rtnl;
        sd_netlink_message *m;
        sd_netlink_message *r;
        const char *string_data;
        int if_loopback;
        uint16_t type;

        test_match();
        test_multiple();

        assert_se(sd_netlink_open(&rtnl) >= 0);
        assert_se(rtnl);

        test_route(rtnl);
        test_message(rtnl);
        test_container(rtnl);
        test_array();

        if_loopback = (int) if_nametoindex("lo");
        assert_se(if_loopback > 0);

        test_async(if_loopback);
        test_slot_set(if_loopback);
        test_async_destroy_callback(if_loopback);
        test_pipe(if_loopback);
        test_event_loop(if_loopback);
        test_link_configure(rtnl, if_loopback);

        test_get_addresses(rtnl);
        test_message_link_bridge(rtnl);

        assert_se(sd_rtnl_message_new_link(rtnl, &m, RTM_GETLINK, if_loopback) >= 0);
        assert_se(m);

        assert_se(sd_netlink_message_get_type(m, &type) >= 0);
        assert_se(type == RTM_GETLINK);

        assert_se(sd_netlink_message_read_string(m, IFLA_IFNAME, &string_data) == -EPERM);

        assert_se(sd_netlink_call(rtnl, m, 0, &r) == 1);
        assert_se(sd_netlink_message_get_type(r, &type) >= 0);
        assert_se(type == RTM_NEWLINK);

        assert_se((r = sd_netlink_message_unref(r)) == ((void*)0));

        assert_se(sd_netlink_call(rtnl, m, -1, &r) == -EPERM);
        assert_se((m = sd_netlink_message_unref(m)) == ((void*)0));
        assert_se((r = sd_netlink_message_unref(r)) == ((void*)0));

        test_link_get(rtnl, if_loopback);
        test_address_get(rtnl, if_loopback);

        assert_se((m = sd_netlink_message_unref(m)) == ((void*)0));
        assert_se((r = sd_netlink_message_unref(r)) == ((void*)0));
        assert_se((rtnl = sd_netlink_unref(rtnl)) == ((void*)0));

        return EXIT_SUCCESS;
}
