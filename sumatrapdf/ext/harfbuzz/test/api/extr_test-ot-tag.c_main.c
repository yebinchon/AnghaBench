
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_test_add (int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int test_ot_tag_language ;
 int test_ot_tag_script_degenerate ;
 int test_ot_tag_script_indic ;
 int test_ot_tag_script_simple ;

int
main (int argc, char **argv)
{
  hb_test_init (&argc, &argv);

  hb_test_add (test_ot_tag_script_degenerate);
  hb_test_add (test_ot_tag_script_simple);
  hb_test_add (test_ot_tag_script_indic);

  hb_test_add (test_ot_tag_language);

  return hb_test_run();
}
