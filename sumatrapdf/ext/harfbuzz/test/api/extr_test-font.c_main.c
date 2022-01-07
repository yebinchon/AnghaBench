
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_test_add (int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int test_face_create ;
 int test_face_createfortables ;
 int test_face_empty ;
 int test_font_empty ;
 int test_font_properties ;
 int test_fontfuncs_empty ;
 int test_fontfuncs_nil ;
 int test_fontfuncs_subclassing ;

int
main (int argc, char **argv)
{
  hb_test_init (&argc, &argv);

  hb_test_add (test_face_empty);
  hb_test_add (test_face_create);
  hb_test_add (test_face_createfortables);

  hb_test_add (test_fontfuncs_empty);
  hb_test_add (test_fontfuncs_nil);
  hb_test_add (test_fontfuncs_subclassing);

  hb_test_add (test_font_empty);
  hb_test_add (test_font_properties);

  return hb_test_run();
}
