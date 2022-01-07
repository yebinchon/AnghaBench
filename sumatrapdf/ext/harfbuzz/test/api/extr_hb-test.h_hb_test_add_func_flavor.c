
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_test_func_t ;


 int g_free (char*) ;
 char* g_strdup_printf (char*,char const*,char const*) ;
 int hb_test_add_func (char*,int ) ;

__attribute__((used)) static inline void
hb_test_add_func_flavor (const char *test_path,
    const char *flavor,
    hb_test_func_t test_func)
{
  char *path = g_strdup_printf ("%s/%s", test_path, flavor);
  hb_test_add_func (path, test_func);
  g_free (path);
}
