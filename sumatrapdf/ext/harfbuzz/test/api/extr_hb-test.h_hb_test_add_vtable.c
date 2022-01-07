
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_test_fixture_func_t ;
typedef int gsize ;
typedef int gconstpointer ;


 int g_free (char*) ;
 int g_test_add_vtable (char*,int ,int ,int ,int ,int ) ;
 char* hb_test_normalize_path (char const*) ;

__attribute__((used)) static inline void
hb_test_add_vtable (const char *test_path,
      gsize data_size,
      gconstpointer test_data,
      hb_test_fixture_func_t data_setup,
      hb_test_fixture_func_t data_test,
      hb_test_fixture_func_t data_teardown)
{
  char *normal_path = hb_test_normalize_path (test_path);
  g_test_add_vtable (normal_path, data_size, test_data, data_setup, data_test, data_teardown);
  g_free (normal_path);
}
