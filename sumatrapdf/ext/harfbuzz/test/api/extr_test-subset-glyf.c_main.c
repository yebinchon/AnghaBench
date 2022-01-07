
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_test_add (int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int test_subset_glyf ;
 int test_subset_glyf_noop ;
 int test_subset_glyf_strip_hints_composite ;
 int test_subset_glyf_strip_hints_invalid ;
 int test_subset_glyf_strip_hints_simple ;
 int test_subset_glyf_with_components ;
 int test_subset_glyf_with_gsub ;
 int test_subset_glyf_without_gsub ;

int
main (int argc, char **argv)
{
  hb_test_init (&argc, &argv);

  hb_test_add (test_subset_glyf_noop);
  hb_test_add (test_subset_glyf);
  hb_test_add (test_subset_glyf_strip_hints_simple);
  hb_test_add (test_subset_glyf_strip_hints_composite);
  hb_test_add (test_subset_glyf_strip_hints_invalid);
  hb_test_add (test_subset_glyf_with_components);
  hb_test_add (test_subset_glyf_with_gsub);
  hb_test_add (test_subset_glyf_without_gsub);

  return hb_test_run();
}
