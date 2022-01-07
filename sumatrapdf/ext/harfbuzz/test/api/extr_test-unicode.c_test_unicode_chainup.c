
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_unicode_funcs_t ;


 int _test_unicode_properties_nil (int *) ;
 int g_assert (int) ;
 int * hb_unicode_funcs_create (int *) ;
 int hb_unicode_funcs_destroy (int *) ;
 int * hb_unicode_funcs_get_default () ;
 int hb_unicode_funcs_is_immutable (int *) ;
 int hb_unicode_funcs_make_immutable (int *) ;
 int test_unicode_properties (int *) ;

__attribute__((used)) static void
test_unicode_chainup (void)
{
  hb_unicode_funcs_t *uf, *uf2;



  uf = hb_unicode_funcs_create (((void*)0));
  g_assert (!hb_unicode_funcs_is_immutable (uf));

  uf2 = hb_unicode_funcs_create (uf);
  g_assert (hb_unicode_funcs_is_immutable (uf));
  hb_unicode_funcs_destroy (uf);

  g_assert (!hb_unicode_funcs_is_immutable (uf2));
  _test_unicode_properties_nil (uf2);

  hb_unicode_funcs_destroy (uf2);



  uf = hb_unicode_funcs_create (hb_unicode_funcs_get_default ());
  g_assert (!hb_unicode_funcs_is_immutable (uf));

  uf2 = hb_unicode_funcs_create (uf);
  g_assert (hb_unicode_funcs_is_immutable (uf));
  hb_unicode_funcs_destroy (uf);

  g_assert (!hb_unicode_funcs_is_immutable (uf2));
  hb_unicode_funcs_make_immutable (uf2);
  test_unicode_properties (uf2);

  hb_unicode_funcs_destroy (uf2);

}
