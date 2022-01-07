
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_test_func_t ;


 int g_free (char*) ;
 int g_test_add_func (char*,int ) ;
 char* hb_test_normalize_path (char const*) ;

__attribute__((used)) static inline void
hb_test_add_func (const char *test_path,
    hb_test_func_t test_func)
{
  char *normal_path = hb_test_normalize_path (test_path);
  g_test_add_func (normal_path, test_func);
  g_free (normal_path);
}
