
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TFun ;
typedef int TCase ;
typedef int Suite ;
typedef int * SFun ;


 int suite_add_tcase (int *,int *) ;
 int * suite_create (char const*) ;
 int tcase_add_checked_fixture (int *,int *,int *) ;
 int tcase_add_test (int *,int ) ;
 int * tcase_create (char*) ;

__attribute__((used)) static Suite* create_suite(const char* name, TFun *tests, size_t num_tests, SFun setup, SFun teardown)
{
  size_t i;
  Suite *s = suite_create(name);

  for(i = 0; i < num_tests; i++) {

    TCase *tc_core = tcase_create("Core");
    if ((setup != ((void*)0)) || (teardown != ((void*)0))) {
      tcase_add_checked_fixture(tc_core, setup, teardown);
    }
    tcase_add_test(tc_core, tests[i]);
    suite_add_tcase(s, tc_core);
  }
  return s;
}
