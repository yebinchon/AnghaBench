
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fork_test (int ) ;
 int test_drop_privileges_dontkeep_net_raw ;
 int test_drop_privileges_fail ;
 int test_drop_privileges_keep_net_raw ;

__attribute__((used)) static void test_drop_privileges(void) {
        fork_test(test_drop_privileges_keep_net_raw);
        fork_test(test_drop_privileges_dontkeep_net_raw);
        fork_test(test_drop_privileges_fail);
}
