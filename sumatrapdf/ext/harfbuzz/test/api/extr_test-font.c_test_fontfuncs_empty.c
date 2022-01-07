
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _test_fontfuncs_nil (int ) ;
 int g_assert (int ) ;
 int hb_font_funcs_get_empty () ;
 int hb_font_funcs_is_immutable (int ) ;

__attribute__((used)) static void
test_fontfuncs_empty (void)
{
  g_assert (hb_font_funcs_get_empty ());
  g_assert (hb_font_funcs_is_immutable (hb_font_funcs_get_empty ()));
  _test_fontfuncs_nil (hb_font_funcs_get_empty ());
}
