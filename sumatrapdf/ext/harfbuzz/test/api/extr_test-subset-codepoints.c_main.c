
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_test_add (int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int test_collect_unicodes ;
 int test_collect_unicodes_format12 ;
 int test_collect_unicodes_format4 ;

int
main (int argc, char **argv)
{
  hb_test_init (&argc, &argv);

  hb_test_add (test_collect_unicodes);
  hb_test_add (test_collect_unicodes_format4);
  hb_test_add (test_collect_unicodes_format12);

  return hb_test_run();
}
