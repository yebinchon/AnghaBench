
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_dhcp_lease_parse_search_domains_basic () ;
 int test_dhcp_lease_parse_search_domains_labels_and_ptr () ;
 int test_dhcp_lease_parse_search_domains_loops () ;
 int test_dhcp_lease_parse_search_domains_no_data () ;
 int test_dhcp_lease_parse_search_domains_ptr () ;
 int test_dhcp_lease_parse_search_domains_wrong_len () ;

int main(int argc, char *argv[]) {
        test_dhcp_lease_parse_search_domains_basic();
        test_dhcp_lease_parse_search_domains_ptr();
        test_dhcp_lease_parse_search_domains_labels_and_ptr();
        test_dhcp_lease_parse_search_domains_no_data();
        test_dhcp_lease_parse_search_domains_loops();
        test_dhcp_lease_parse_search_domains_wrong_len();
}
