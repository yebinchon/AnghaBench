
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int parse_ip_protocol (char const*) ;

__attribute__((used)) static void test_parse_ip_protocol(const char *s, int expected) {
        assert_se(parse_ip_protocol(s) == expected);
}
