
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int ) ;
 int ip_protocol_from_name (char const*) ;
 int ip_protocol_to_name (int ) ;
 int parse_ip_protocol (char const*) ;
 int streq (int ,char const*) ;

__attribute__((used)) static void test_str(const char *s) {
        assert_se(streq(ip_protocol_to_name(ip_protocol_from_name(s)), s));
        assert_se(streq(ip_protocol_to_name(parse_ip_protocol(s)), s));
}
