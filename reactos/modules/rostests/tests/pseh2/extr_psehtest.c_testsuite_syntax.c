
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testsuite ;
struct subtest {int name; int func; } ;


 struct subtest const USE_TEST (int ) ;
 int call_test (int ) ;
 int ok (int ,char*,int ) ;
 int test_PSEH3_bug ;
 int test_PSEH3_bug2 ;
 int test_abnorm_1 ;
 int test_abnorm_2 ;
 int test_abnorm_3 ;
 int test_abnorm_4 ;
 int test_abnorm_5 ;
 int test_abnorm_6 ;
 int test_abnorm_7 ;
 int test_abnorm_8 ;
 int test_bug_4004 ;
 int test_bug_4663 ;
 int test_continue_execution_1 ;
 int test_continue_execution_10 ;
 int test_continue_execution_11 ;
 int test_continue_execution_12 ;
 int test_continue_execution_2 ;
 int test_continue_execution_3 ;
 int test_continue_execution_4 ;
 int test_continue_execution_5 ;
 int test_continue_execution_6 ;
 int test_continue_execution_7 ;
 int test_continue_execution_8 ;
 int test_continue_execution_9 ;
 int test_continue_search_1 ;
 int test_continue_search_2 ;
 int test_continue_search_3 ;
 int test_continue_search_4 ;
 int test_continue_search_5 ;
 int test_continue_search_6 ;
 int test_empty_1 ;
 int test_empty_2 ;
 int test_empty_3 ;
 int test_empty_4 ;
 int test_empty_5 ;
 int test_empty_6 ;
 int test_empty_7 ;
 int test_empty_8 ;
 int test_execute_handler_1 ;
 int test_execute_handler_10 ;
 int test_execute_handler_11 ;
 int test_execute_handler_12 ;
 int test_execute_handler_2 ;
 int test_execute_handler_3 ;
 int test_execute_handler_4 ;
 int test_execute_handler_5 ;
 int test_execute_handler_6 ;
 int test_execute_handler_7 ;
 int test_execute_handler_8 ;
 int test_execute_handler_9 ;
 int test_finally_1 ;
 int test_finally_10 ;
 int test_finally_11 ;
 int test_finally_12 ;
 int test_finally_13 ;
 int test_finally_14 ;
 int test_finally_2 ;
 int test_finally_3 ;
 int test_finally_4 ;
 int test_finally_5 ;
 int test_finally_6 ;
 int test_finally_7 ;
 int test_finally_8 ;
 int test_finally_9 ;
 int test_finally_goto ;
 int test_leave_1 ;
 int test_leave_2 ;
 int test_leave_3 ;
 int test_leave_4 ;
 int test_leave_5 ;
 int test_leave_6 ;
 int test_nested_exception ;
 int test_nested_locals_1 ;
 int test_nested_locals_2 ;
 int test_nested_locals_3 ;
 int test_unvolatile ;
 int test_unvolatile_2 ;
 int test_unvolatile_3 ;
 int test_unvolatile_4 ;
 int test_xcode_1 ;
 int test_xcode_2 ;
 int test_xcode_3 ;
 int test_xpointers_1 ;
 int test_xpointers_10 ;
 int test_xpointers_11 ;
 int test_xpointers_12 ;
 int test_xpointers_13 ;
 int test_xpointers_14 ;
 int test_xpointers_15 ;
 int test_xpointers_16 ;
 int test_xpointers_2 ;
 int test_xpointers_3 ;
 int test_xpointers_4 ;
 int test_xpointers_5 ;
 int test_xpointers_6 ;
 int test_xpointers_7 ;
 int test_xpointers_8 ;
 int test_xpointers_9 ;
 int test_yield_1 ;
 int test_yield_2 ;
 int test_yield_3 ;
 int test_yield_4 ;
 int test_yield_5 ;
 int test_yield_6 ;

void testsuite_syntax(void)
{
 const struct subtest testsuite[] =
 {
  USE_TEST(test_empty_1),
  USE_TEST(test_empty_2),
  USE_TEST(test_empty_3),
  USE_TEST(test_empty_4),
  USE_TEST(test_empty_5),
  USE_TEST(test_empty_6),
  USE_TEST(test_empty_7),
  USE_TEST(test_empty_8),

  USE_TEST(test_execute_handler_1),
  USE_TEST(test_continue_execution_1),
  USE_TEST(test_continue_search_1),
  USE_TEST(test_execute_handler_2),
  USE_TEST(test_continue_execution_2),

  USE_TEST(test_execute_handler_3),
  USE_TEST(test_continue_execution_3),
  USE_TEST(test_continue_search_2),
  USE_TEST(test_execute_handler_4),
  USE_TEST(test_continue_execution_4),

  USE_TEST(test_execute_handler_5),
  USE_TEST(test_continue_execution_5),
  USE_TEST(test_continue_search_3),
  USE_TEST(test_execute_handler_6),
  USE_TEST(test_continue_execution_6),

  USE_TEST(test_execute_handler_7),
  USE_TEST(test_continue_execution_7),
  USE_TEST(test_continue_search_4),
  USE_TEST(test_execute_handler_8),
  USE_TEST(test_continue_execution_8),

  USE_TEST(test_execute_handler_9),
  USE_TEST(test_continue_execution_9),
  USE_TEST(test_continue_search_5),
  USE_TEST(test_execute_handler_10),
  USE_TEST(test_continue_execution_10),

  USE_TEST(test_execute_handler_11),
  USE_TEST(test_continue_execution_11),
  USE_TEST(test_continue_search_6),
  USE_TEST(test_execute_handler_12),
  USE_TEST(test_continue_execution_12),

  USE_TEST(test_leave_1),
  USE_TEST(test_leave_2),
  USE_TEST(test_leave_3),
  USE_TEST(test_leave_4),
  USE_TEST(test_leave_5),
  USE_TEST(test_leave_6),

  USE_TEST(test_yield_1),
  USE_TEST(test_yield_2),
  USE_TEST(test_yield_3),
  USE_TEST(test_yield_4),
  USE_TEST(test_yield_5),
  USE_TEST(test_yield_6),

  USE_TEST(test_finally_1),
  USE_TEST(test_finally_2),
  USE_TEST(test_finally_3),
  USE_TEST(test_finally_4),
  USE_TEST(test_finally_5),
  USE_TEST(test_finally_6),
  USE_TEST(test_finally_7),
  USE_TEST(test_finally_8),
  USE_TEST(test_finally_9),
  USE_TEST(test_finally_10),
  USE_TEST(test_finally_11),
  USE_TEST(test_finally_12),
  USE_TEST(test_finally_13),
  USE_TEST(test_finally_14),

  USE_TEST(test_xpointers_1),
  USE_TEST(test_xpointers_2),
  USE_TEST(test_xpointers_3),
  USE_TEST(test_xpointers_4),
  USE_TEST(test_xpointers_5),
  USE_TEST(test_xpointers_6),
  USE_TEST(test_xpointers_7),
  USE_TEST(test_xpointers_8),
  USE_TEST(test_xpointers_9),
  USE_TEST(test_xpointers_10),
  USE_TEST(test_xpointers_11),
  USE_TEST(test_xpointers_12),
  USE_TEST(test_xpointers_13),
  USE_TEST(test_xpointers_14),
  USE_TEST(test_xpointers_15),
  USE_TEST(test_xpointers_16),

  USE_TEST(test_xcode_1),
  USE_TEST(test_xcode_2),
  USE_TEST(test_xcode_3),

  USE_TEST(test_abnorm_1),
  USE_TEST(test_abnorm_2),
  USE_TEST(test_abnorm_3),
  USE_TEST(test_abnorm_4),
  USE_TEST(test_abnorm_5),
  USE_TEST(test_abnorm_6),
  USE_TEST(test_abnorm_7),
  USE_TEST(test_abnorm_8),

  USE_TEST(test_nested_locals_1),
  USE_TEST(test_nested_locals_2),
  USE_TEST(test_nested_locals_3),

  USE_TEST(test_bug_4004),
  USE_TEST(test_bug_4663),

  USE_TEST(test_unvolatile),
  USE_TEST(test_unvolatile_2),

  USE_TEST(test_unvolatile_3),

  USE_TEST(test_unvolatile_4),
  USE_TEST(test_finally_goto),
  USE_TEST(test_nested_exception),
  USE_TEST(test_PSEH3_bug),
  USE_TEST(test_PSEH3_bug2),
 };

 size_t i;

 for(i = 0; i < sizeof(testsuite) / sizeof(testsuite[0]); ++ i)
  ok(call_test(testsuite[i].func), "%s failed\n", testsuite[i].name);
}
