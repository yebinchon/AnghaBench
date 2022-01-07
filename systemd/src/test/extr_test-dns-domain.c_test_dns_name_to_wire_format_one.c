
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int assert_se (int) ;
 int dns_name_to_wire_format (char const*,int *,size_t,int) ;
 int log_info (char*,char const*,char const*,size_t,int) ;
 int memcmp (int *,char const*,int) ;

__attribute__((used)) static void test_dns_name_to_wire_format_one(const char *what, const char *expect, size_t buffer_sz, int ret) {
        uint8_t buffer[buffer_sz];
        int r;

        log_info("%s, %s, %zu, →%d", what, expect, buffer_sz, ret);

        r = dns_name_to_wire_format(what, buffer, buffer_sz, 0);
        assert_se(r == ret);

        if (r < 0)
                return;

        assert_se(!memcmp(buffer, expect, r));
}
