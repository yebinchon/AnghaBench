
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_unicode_funcs_t ;


 int _test_unicode_properties_nil (int *) ;
 int g_assert (int) ;
 int * hb_unicode_funcs_create (int *) ;
 int hb_unicode_funcs_destroy (int *) ;
 int hb_unicode_funcs_is_immutable (int *) ;

__attribute__((used)) static void
test_unicode_properties_nil (void)
{
  hb_unicode_funcs_t *uf = hb_unicode_funcs_create (((void*)0));

  g_assert (!hb_unicode_funcs_is_immutable (uf));
  _test_unicode_properties_nil (uf);

  hb_unicode_funcs_destroy (uf);
}
