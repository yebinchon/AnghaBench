
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_test_add (int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int test_post_drops_glyph_names ;

int
main (int argc, char **argv)
{
  hb_test_init (&argc, &argv);

  hb_test_add (test_post_drops_glyph_names);

  return hb_test_run();
}
