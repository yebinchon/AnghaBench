
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_test_add (int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int test_subset_cmap ;
 int test_subset_cmap_non_consecutive_glyphs ;
 int test_subset_cmap_noop ;

int
main (int argc, char **argv)
{
  hb_test_init (&argc, &argv);

  hb_test_add (test_subset_cmap);
  hb_test_add (test_subset_cmap_noop);
  hb_test_add (test_subset_cmap_non_consecutive_glyphs);

  return hb_test_run();
}
