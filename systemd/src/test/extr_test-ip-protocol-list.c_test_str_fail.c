
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int assert_se (int) ;
 int ip_protocol_from_name (char const*) ;
 int parse_ip_protocol (char const*) ;

__attribute__((used)) static void test_str_fail(const char *s) {
        assert_se(ip_protocol_from_name(s) == -EINVAL);
        assert_se(parse_ip_protocol(s) == -EINVAL);
}
