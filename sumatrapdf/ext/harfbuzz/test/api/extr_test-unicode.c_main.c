
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gconstpointer ;


 int data_fixture ;
 int hb_glib_get_unicode_funcs () ;
 int hb_icu_get_unicode_funcs () ;
 int hb_test_add (int ) ;
 int hb_test_add_data_flavor (int ,char*,int ) ;
 int hb_test_add_fixture (int ,int *,int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int hb_unicode_funcs_get_default () ;
 scalar_t__ script_roundtrip_default ;
 scalar_t__ script_roundtrip_glib ;
 scalar_t__ script_roundtrip_icu ;
 int test_unicode_chainup ;
 int test_unicode_normalization ;
 int test_unicode_properties ;
 int test_unicode_properties_empty ;
 int test_unicode_properties_nil ;
 int test_unicode_script_roundtrip ;
 int test_unicode_setters ;
 int test_unicode_subclassing_deep ;
 int test_unicode_subclassing_default ;
 int test_unicode_subclassing_nil ;

int
main (int argc, char **argv)
{
  hb_test_init (&argc, &argv);

  hb_test_add (test_unicode_properties_nil);
  hb_test_add (test_unicode_properties_empty);

  hb_test_add_data_flavor (hb_unicode_funcs_get_default (), "default", test_unicode_properties);
  hb_test_add_data_flavor (hb_unicode_funcs_get_default (), "default", test_unicode_normalization);
  hb_test_add_data_flavor ((gconstpointer) script_roundtrip_default, "default", test_unicode_script_roundtrip);
  hb_test_add (test_unicode_chainup);

  hb_test_add (test_unicode_setters);

  hb_test_add_fixture (data_fixture, ((void*)0), test_unicode_subclassing_nil);
  hb_test_add_fixture (data_fixture, ((void*)0), test_unicode_subclassing_default);
  hb_test_add_fixture (data_fixture, ((void*)0), test_unicode_subclassing_deep);

  return hb_test_run ();
}
