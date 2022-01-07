
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_test_add (int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int test_get_constant ;
 int test_get_glyph_assembly ;
 int test_get_glyph_assembly_italics_correction ;
 int test_get_glyph_italics_correction ;
 int test_get_glyph_kerning ;
 int test_get_glyph_top_accent_attachment ;
 int test_get_glyph_variants ;
 int test_get_min_connector_overlap ;
 int test_has_data ;
 int test_is_glyph_extended_shape ;

int
main (int argc, char **argv)
{
  hb_test_init (&argc, &argv);

  hb_test_add (test_has_data);
  hb_test_add (test_get_constant);
  hb_test_add (test_get_glyph_italics_correction);
  hb_test_add (test_get_glyph_top_accent_attachment);
  hb_test_add (test_is_glyph_extended_shape);
  hb_test_add (test_get_glyph_kerning);
  hb_test_add (test_get_glyph_assembly_italics_correction);
  hb_test_add (test_get_min_connector_overlap);
  hb_test_add (test_get_glyph_variants);
  hb_test_add (test_get_glyph_assembly);

  return hb_test_run();
}
