
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 int DUID_TYPE_EN ;
 int DUID_TYPE_LL ;
 int DUID_TYPE_LLT ;
 int DUID_TYPE_UUID ;
 int test_config_parse_duid_type_one (char*,int ,int ,int ) ;

__attribute__((used)) static void test_config_parse_duid_type(void) {
        test_config_parse_duid_type_one("", 0, 0, 0);
        test_config_parse_duid_type_one("link-layer-time", 0, DUID_TYPE_LLT, 0);
        test_config_parse_duid_type_one("link-layer-time:2000-01-01 00:00:00 UTC", 0, DUID_TYPE_LLT, (usec_t) 946684800000000);
        test_config_parse_duid_type_one("vendor", 0, DUID_TYPE_EN, 0);
        test_config_parse_duid_type_one("vendor:2000-01-01 00:00:00 UTC", 0, 0, 0);
        test_config_parse_duid_type_one("link-layer", 0, DUID_TYPE_LL, 0);
        test_config_parse_duid_type_one("link-layer:2000-01-01 00:00:00 UTC", 0, 0, 0);
        test_config_parse_duid_type_one("uuid", 0, DUID_TYPE_UUID, 0);
        test_config_parse_duid_type_one("uuid:2000-01-01 00:00:00 UTC", 0, 0, 0);
        test_config_parse_duid_type_one("foo", 0, 0, 0);
        test_config_parse_duid_type_one("foo:2000-01-01 00:00:00 UTC", 0, 0, 0);
}
