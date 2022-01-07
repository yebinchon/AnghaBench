
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int parse_percent_unbounded (char*) ;

__attribute__((used)) static void test_parse_percent_unbounded(void) {
        assert_se(parse_percent_unbounded("101%") == 101);
        assert_se(parse_percent_unbounded("400%") == 400);
}
