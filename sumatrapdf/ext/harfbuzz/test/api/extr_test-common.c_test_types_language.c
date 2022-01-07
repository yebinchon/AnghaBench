
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * hb_language_t ;


 int * HB_LANGUAGE_INVALID ;
 int g_assert (int) ;
 int * hb_language_from_string (char*,int) ;
 int * hb_language_get_default () ;
 int * hb_language_to_string (int *) ;

__attribute__((used)) static void
test_types_language (void)
{
  hb_language_t fa = hb_language_from_string ("fa", -1);
  hb_language_t fa_IR = hb_language_from_string ("fa_IR", -1);
  hb_language_t fa_ir = hb_language_from_string ("fa-ir", -1);
  hb_language_t en = hb_language_from_string ("en", -1);

  g_assert (HB_LANGUAGE_INVALID == ((void*)0));

  g_assert (fa != ((void*)0));
  g_assert (fa_IR != ((void*)0));
  g_assert (fa_IR == fa_ir);

  g_assert (en != ((void*)0));
  g_assert (en != fa);


  g_assert (en == hb_language_from_string ("en", -1));
  g_assert (en == hb_language_from_string ("eN", -1));
  g_assert (en == hb_language_from_string ("Enx", 2));

  g_assert (HB_LANGUAGE_INVALID == hb_language_from_string (((void*)0), -1));
  g_assert (HB_LANGUAGE_INVALID == hb_language_from_string ("", -1));
  g_assert (HB_LANGUAGE_INVALID == hb_language_from_string ("en", 0));
  g_assert (HB_LANGUAGE_INVALID != hb_language_from_string ("en", 1));
  g_assert (((void*)0) == hb_language_to_string (HB_LANGUAGE_INVALID));




  g_assert (HB_LANGUAGE_INVALID != hb_language_get_default ());
}
