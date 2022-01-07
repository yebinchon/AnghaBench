
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_netlink ;


 int LOG_INFO ;
 int assert_se (int) ;
 scalar_t__ sd_netlink_open (int **) ;
 int * sd_netlink_unref (int *) ;
 int test_setup_logging (int ) ;
 int test_tunnel_configure (int *) ;

int main(int argc, char *argv[]) {
        sd_netlink *rtnl;
        int r;

        test_setup_logging(LOG_INFO);

        assert_se(sd_netlink_open(&rtnl) >= 0);
        assert_se(rtnl);

        r = test_tunnel_configure(rtnl);

        assert_se((rtnl = sd_netlink_unref(rtnl)) == ((void*)0));

        return r;
}
