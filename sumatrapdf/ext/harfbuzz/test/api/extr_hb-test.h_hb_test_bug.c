
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_free (char*) ;
 char* g_strdup_printf (char*,unsigned int) ;
 int g_test_bug (char*) ;
 int g_test_bug_base (char const*) ;

__attribute__((used)) static inline void
hb_test_bug (const char *uri_base, unsigned int number)
{
  char *s = g_strdup_printf ("%u", number);

  g_test_bug_base (uri_base);
  g_test_bug (s);

  g_free (s);
}
