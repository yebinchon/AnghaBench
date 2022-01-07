
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_font_funcs_t ;


 int _test_fontfuncs_nil (int ) ;
 int g_assert (int) ;
 int * hb_font_funcs_create () ;
 int hb_font_funcs_destroy (int *) ;
 int hb_font_funcs_get_empty () ;
 int hb_font_funcs_is_immutable (int *) ;

__attribute__((used)) static void
test_fontfuncs_nil (void)
{
  hb_font_funcs_t *ffuncs;

  ffuncs = hb_font_funcs_create ();

  g_assert (!hb_font_funcs_is_immutable (ffuncs));
  _test_fontfuncs_nil (hb_font_funcs_get_empty ());

  hb_font_funcs_destroy (ffuncs);
}
