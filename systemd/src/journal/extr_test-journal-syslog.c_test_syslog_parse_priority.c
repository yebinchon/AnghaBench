
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int syslog_parse_priority (char const**,int*,int) ;

__attribute__((used)) static void test_syslog_parse_priority(const char *str, int priority, int ret) {
        const char *buf = str;
        int priority2 = 0, ret2;

        ret2 = syslog_parse_priority(&buf, &priority2, 0);

        assert_se(ret == ret2);
        if (ret2 == 1)
                assert_se(priority == priority2);
}
