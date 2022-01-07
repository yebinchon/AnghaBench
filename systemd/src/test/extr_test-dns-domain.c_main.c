
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_dns_label_escape () ;
 int test_dns_label_unescape () ;
 int test_dns_label_unescape_suffix () ;
 int test_dns_name_apply_idna () ;
 int test_dns_name_between () ;
 int test_dns_name_change_suffix () ;
 int test_dns_name_common_suffix () ;
 int test_dns_name_compare_func () ;
 int test_dns_name_concat () ;
 int test_dns_name_count_labels () ;
 int test_dns_name_endswith () ;
 int test_dns_name_equal () ;
 int test_dns_name_equal_skip () ;
 int test_dns_name_is_root () ;
 int test_dns_name_is_single_label () ;
 int test_dns_name_is_valid () ;
 int test_dns_name_is_valid_or_address () ;
 int test_dns_name_normalize () ;
 int test_dns_name_reverse () ;
 int test_dns_name_startswith () ;
 int test_dns_name_suffix () ;
 int test_dns_name_to_wire_format () ;
 int test_dns_service_join () ;
 int test_dns_service_name_is_valid () ;
 int test_dns_service_split () ;
 int test_dns_srv_type_is_valid () ;
 int test_dnssd_srv_type_is_valid () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_dns_label_unescape();
        test_dns_label_unescape_suffix();
        test_dns_label_escape();
        test_dns_name_normalize();
        test_dns_name_equal();
        test_dns_name_endswith();
        test_dns_name_startswith();
        test_dns_name_between();
        test_dns_name_is_root();
        test_dns_name_is_single_label();
        test_dns_name_reverse();
        test_dns_name_concat();
        test_dns_name_is_valid();
        test_dns_name_to_wire_format();
        test_dns_service_name_is_valid();
        test_dns_srv_type_is_valid();
        test_dnssd_srv_type_is_valid();
        test_dns_service_join();
        test_dns_service_split();
        test_dns_name_change_suffix();
        test_dns_name_suffix();
        test_dns_name_count_labels();
        test_dns_name_equal_skip();
        test_dns_name_compare_func();
        test_dns_name_common_suffix();
        test_dns_name_apply_idna();
        test_dns_name_is_valid_or_address();

        return 0;
}
