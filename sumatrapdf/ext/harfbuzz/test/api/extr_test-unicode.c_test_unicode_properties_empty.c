
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_unicode_funcs_t ;


 int _test_unicode_properties_nil (int *) ;
 int g_assert (int *) ;
 int * hb_unicode_funcs_get_empty () ;
 int * hb_unicode_funcs_is_immutable (int *) ;

__attribute__((used)) static void
test_unicode_properties_empty (void)
{
  hb_unicode_funcs_t *uf = hb_unicode_funcs_get_empty ();

  g_assert (uf);
  g_assert (hb_unicode_funcs_is_immutable (uf));
  _test_unicode_properties_nil (uf);
}
