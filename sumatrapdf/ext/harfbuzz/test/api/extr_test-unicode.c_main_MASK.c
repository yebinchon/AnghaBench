#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  gconstpointer ;

/* Variables and functions */
 int /*<<< orphan*/  data_fixture ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,char***) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ script_roundtrip_default ; 
 scalar_t__ script_roundtrip_glib ; 
 scalar_t__ script_roundtrip_icu ; 
 int /*<<< orphan*/  test_unicode_chainup ; 
 int /*<<< orphan*/  test_unicode_normalization ; 
 int /*<<< orphan*/  test_unicode_properties ; 
 int /*<<< orphan*/  test_unicode_properties_empty ; 
 int /*<<< orphan*/  test_unicode_properties_nil ; 
 int /*<<< orphan*/  test_unicode_script_roundtrip ; 
 int /*<<< orphan*/  test_unicode_setters ; 
 int /*<<< orphan*/  test_unicode_subclassing_deep ; 
 int /*<<< orphan*/  test_unicode_subclassing_default ; 
 int /*<<< orphan*/  test_unicode_subclassing_nil ; 

int
FUNC8 (int argc, char **argv)
{
  FUNC5 (&argc, &argv);

  FUNC2 (test_unicode_properties_nil);
  FUNC2 (test_unicode_properties_empty);

  FUNC3 (FUNC7 (),          "default", test_unicode_properties);
  FUNC3 (FUNC7 (),          "default", test_unicode_normalization);
  FUNC3 ((gconstpointer) script_roundtrip_default, "default", test_unicode_script_roundtrip);
#ifdef HAVE_GLIB
  hb_test_add_data_flavor (hb_glib_get_unicode_funcs (),             "glib",    test_unicode_properties);
  hb_test_add_data_flavor (hb_glib_get_unicode_funcs (),             "glib",    test_unicode_normalization);
  hb_test_add_data_flavor ((gconstpointer) script_roundtrip_glib,    "glib",    test_unicode_script_roundtrip);
#endif
#ifdef HAVE_ICU
  hb_test_add_data_flavor (hb_icu_get_unicode_funcs (),              "icu",     test_unicode_properties);
  hb_test_add_data_flavor (hb_icu_get_unicode_funcs (),              "icu",     test_unicode_normalization);
  hb_test_add_data_flavor ((gconstpointer) script_roundtrip_icu,     "icu",     test_unicode_script_roundtrip);
#endif

  FUNC2 (test_unicode_chainup);

  FUNC2 (test_unicode_setters);

  FUNC4 (data_fixture, NULL, test_unicode_subclassing_nil);
  FUNC4 (data_fixture, NULL, test_unicode_subclassing_default);
  FUNC4 (data_fixture, NULL, test_unicode_subclassing_deep);

  return FUNC6 ();
}