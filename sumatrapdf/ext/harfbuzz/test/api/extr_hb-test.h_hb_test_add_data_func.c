
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_test_data_func_t ;
typedef int gconstpointer ;


 int g_free (char*) ;
 int g_test_add_data_func (char*,int ,int ) ;
 char* hb_test_normalize_path (char const*) ;

__attribute__((used)) static inline void
hb_test_add_data_func (const char *test_path,
         gconstpointer test_data,
         hb_test_data_func_t test_func)
{
  char *normal_path = hb_test_normalize_path (test_path);
  g_test_add_data_func (normal_path, test_data, test_func);
  g_free (normal_path);
}
