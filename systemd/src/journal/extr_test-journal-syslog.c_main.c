
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_syslog_parse_identifier (char*,char*,char*,char*,int) ;
 int test_syslog_parse_priority (char*,int ,int ) ;

int main(void) {
        test_syslog_parse_identifier("pidu[111]: xxx", "pidu", "111", "xxx", 11);
        test_syslog_parse_identifier("pidu: xxx", "pidu", ((void*)0), "xxx", 6);
        test_syslog_parse_identifier("pidu:  xxx", "pidu", ((void*)0), " xxx", 6);
        test_syslog_parse_identifier("pidu xxx", ((void*)0), ((void*)0), "pidu xxx", 0);
        test_syslog_parse_identifier("   pidu xxx", ((void*)0), ((void*)0), "   pidu xxx", 0);
        test_syslog_parse_identifier("", ((void*)0), ((void*)0), "", 0);
        test_syslog_parse_identifier("  ", ((void*)0), ((void*)0), "  ", 0);
        test_syslog_parse_identifier(":", "", ((void*)0), "", 1);
        test_syslog_parse_identifier(":  ", "", ((void*)0), " ", 2);
        test_syslog_parse_identifier(" :", "", ((void*)0), "", 2);
        test_syslog_parse_identifier("   pidu:", "pidu", ((void*)0), "", 8);
        test_syslog_parse_identifier("pidu:", "pidu", ((void*)0), "", 5);
        test_syslog_parse_identifier("pidu: ", "pidu", ((void*)0), "", 6);
        test_syslog_parse_identifier("pidu : ", ((void*)0), ((void*)0), "pidu : ", 0);

        test_syslog_parse_priority("<>", 0, 0);
        test_syslog_parse_priority("<>aaa", 0, 0);
        test_syslog_parse_priority("<aaaa>", 0, 0);
        test_syslog_parse_priority("<aaaa>aaa", 0, 0);
        test_syslog_parse_priority(" <aaaa>", 0, 0);
        test_syslog_parse_priority(" <aaaa>aaa", 0, 0);


        return 0;
}
