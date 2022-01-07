
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct ether_addr {int dummy; } ;
typedef int sd_ipv4acd ;
typedef int sd_event ;


 int EXIT_SUCCESS ;
 int acd_handler ;
 int assert_se (int) ;
 int log_info (char*) ;
 scalar_t__ sd_event_loop (int *) ;
 scalar_t__ sd_ipv4acd_attach_event (int *,int *,int ) ;
 scalar_t__ sd_ipv4acd_new (int **) ;
 scalar_t__ sd_ipv4acd_set_address (int *,struct in_addr const*) ;
 scalar_t__ sd_ipv4acd_set_callback (int *,int ,int *) ;
 scalar_t__ sd_ipv4acd_set_ifindex (int *,int) ;
 scalar_t__ sd_ipv4acd_set_mac (int *,struct ether_addr const*) ;
 scalar_t__ sd_ipv4acd_start (int *) ;
 int sd_ipv4acd_unref (int *) ;

__attribute__((used)) static int client_run(int ifindex, const struct in_addr *pa, const struct ether_addr *ha, sd_event *e) {
        sd_ipv4acd *acd;

        assert_se(sd_ipv4acd_new(&acd) >= 0);
        assert_se(sd_ipv4acd_attach_event(acd, e, 0) >= 0);

        assert_se(sd_ipv4acd_set_ifindex(acd, ifindex) >= 0);
        assert_se(sd_ipv4acd_set_mac(acd, ha) >= 0);
        assert_se(sd_ipv4acd_set_address(acd, pa) >= 0);
        assert_se(sd_ipv4acd_set_callback(acd, acd_handler, ((void*)0)) >= 0);

        log_info("starting IPv4ACD client");

        assert_se(sd_ipv4acd_start(acd) >= 0);

        assert_se(sd_event_loop(e) >= 0);

        assert_se(!sd_ipv4acd_unref(acd));

        return EXIT_SUCCESS;
}
