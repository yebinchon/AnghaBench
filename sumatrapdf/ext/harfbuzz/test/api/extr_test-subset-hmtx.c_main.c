
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_test_add (int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int test_subset_hmtx_decrease_num_metrics ;
 int test_subset_hmtx_keep_num_metrics ;
 int test_subset_hmtx_monospace ;
 int test_subset_hmtx_noop ;
 int test_subset_hmtx_simple_subset ;
 int test_subset_invalid_hmtx ;

int
main (int argc, char **argv)
{
  hb_test_init (&argc, &argv);

  hb_test_add (test_subset_hmtx_simple_subset);
  hb_test_add (test_subset_hmtx_monospace);
  hb_test_add (test_subset_hmtx_keep_num_metrics);
  hb_test_add (test_subset_hmtx_decrease_num_metrics);
  hb_test_add (test_subset_hmtx_noop);
  hb_test_add (test_subset_invalid_hmtx);

  return hb_test_run();
}
