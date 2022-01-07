
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct ifa_cacheinfo {int dummy; } ;
typedef int sd_netlink_message ;
typedef int sd_netlink ;


 int AF_INET ;
 int IFA_ADDRESS ;
 int IFA_CACHEINFO ;
 int IFA_LABEL ;
 int IFA_LOCAL ;
 int RTM_GETADDR ;
 int assert_se (int) ;
 int sd_netlink_call (int *,int *,int,int **) ;
 scalar_t__ sd_netlink_message_read_cache_info (int *,int ,struct ifa_cacheinfo*) ;
 scalar_t__ sd_netlink_message_read_in_addr (int *,int ,struct in_addr*) ;
 scalar_t__ sd_netlink_message_read_string (int *,int ,char const**) ;
 int * sd_netlink_message_unref (int *) ;
 scalar_t__ sd_rtnl_message_new_addr (int *,int **,int ,int,int ) ;

__attribute__((used)) static void test_address_get(sd_netlink *rtnl, int ifindex) {
        sd_netlink_message *m;
        sd_netlink_message *r;
        struct in_addr in_data;
        struct ifa_cacheinfo cache;
        const char *label;

        assert_se(sd_rtnl_message_new_addr(rtnl, &m, RTM_GETADDR, ifindex, AF_INET) >= 0);
        assert_se(m);

        assert_se(sd_netlink_call(rtnl, m, -1, &r) == 1);

        assert_se(sd_netlink_message_read_in_addr(r, IFA_LOCAL, &in_data) == 0);
        assert_se(sd_netlink_message_read_in_addr(r, IFA_ADDRESS, &in_data) == 0);
        assert_se(sd_netlink_message_read_string(r, IFA_LABEL, &label) == 0);
        assert_se(sd_netlink_message_read_cache_info(r, IFA_CACHEINFO, &cache) == 0);

        assert_se((m = sd_netlink_message_unref(m)) == ((void*)0));
        assert_se((r = sd_netlink_message_unref(r)) == ((void*)0));

}
