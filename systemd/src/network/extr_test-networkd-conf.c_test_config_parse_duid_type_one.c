
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ llt_time; } ;
typedef scalar_t__ DUIDType ;
typedef TYPE_1__ DUID ;


 scalar_t__ DUID_TYPE_LLT ;
 int assert_se (int) ;
 int config_parse_duid_type (char*,char*,int,char*,int,char*,int ,char const*,TYPE_1__*,int *) ;
 int log_info_errno (int,char*,char const*,scalar_t__) ;

__attribute__((used)) static void test_config_parse_duid_type_one(const char *rvalue, int ret, DUIDType expected, usec_t expected_time) {
        DUID actual = {};
        int r;

        r = config_parse_duid_type("network", "filename", 1, "section", 1, "lvalue", 0, rvalue, &actual, ((void*)0));
        log_info_errno(r, "\"%s\" → %d (%m)", rvalue, actual.type);
        assert_se(r == ret);
        assert_se(expected == actual.type);
        if (expected == DUID_TYPE_LLT)
                assert_se(expected_time == actual.llt_time);
}
