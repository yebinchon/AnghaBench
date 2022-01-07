
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;
typedef int sd_ipv4ll ;
typedef int sd_event ;


 int EXIT_SUCCESS ;
 int assert_se (int) ;
 int ll_handler ;
 int log_info (char*) ;
 scalar_t__ safe_atou (char const*,unsigned int*) ;
 scalar_t__ sd_event_loop (int *) ;
 scalar_t__ sd_ipv4ll_attach_event (int *,int *,int ) ;
 scalar_t__ sd_ipv4ll_new (int **) ;
 scalar_t__ sd_ipv4ll_set_address_seed (int *,unsigned int) ;
 scalar_t__ sd_ipv4ll_set_callback (int *,int ,int *) ;
 scalar_t__ sd_ipv4ll_set_ifindex (int *,int) ;
 scalar_t__ sd_ipv4ll_set_mac (int *,struct ether_addr const*) ;
 scalar_t__ sd_ipv4ll_start (int *) ;
 int sd_ipv4ll_unref (int *) ;

__attribute__((used)) static int client_run(int ifindex, const char *seed_str, const struct ether_addr *ha, sd_event *e) {
        sd_ipv4ll *ll;

        assert_se(sd_ipv4ll_new(&ll) >= 0);
        assert_se(sd_ipv4ll_attach_event(ll, e, 0) >= 0);

        assert_se(sd_ipv4ll_set_ifindex(ll, ifindex) >= 0);
        assert_se(sd_ipv4ll_set_mac(ll, ha) >= 0);
        assert_se(sd_ipv4ll_set_callback(ll, ll_handler, ((void*)0)) >= 0);

        if (seed_str) {
                unsigned seed;

                assert_se(safe_atou(seed_str, &seed) >= 0);

                assert_se(sd_ipv4ll_set_address_seed(ll, seed) >= 0);
        }

        log_info("starting IPv4LL client");

        assert_se(sd_ipv4ll_start(ll) >= 0);

        assert_se(sd_event_loop(e) >= 0);

        assert_se(!sd_ipv4ll_unref(ll));

        return EXIT_SUCCESS;
}
