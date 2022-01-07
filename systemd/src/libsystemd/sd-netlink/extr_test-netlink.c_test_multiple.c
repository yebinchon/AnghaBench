
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_netlink ;


 int assert_se (int) ;
 scalar_t__ sd_netlink_open (int **) ;
 int * sd_netlink_unref (int *) ;

__attribute__((used)) static void test_multiple(void) {
        sd_netlink *rtnl1, *rtnl2;

        assert_se(sd_netlink_open(&rtnl1) >= 0);
        assert_se(sd_netlink_open(&rtnl2) >= 0);

        rtnl1 = sd_netlink_unref(rtnl1);
        rtnl2 = sd_netlink_unref(rtnl2);
}
