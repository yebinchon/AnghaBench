
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int dns_name_count_labels (char const*) ;
 int log_info (char*,char const*,int) ;

__attribute__((used)) static void test_dns_name_count_labels_one(const char *name, int n) {
        log_info("%s, →%d", name, n);

        assert_se(dns_name_count_labels(name) == n);
}
