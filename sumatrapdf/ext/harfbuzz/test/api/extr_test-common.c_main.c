
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_test_add (int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int test_types_direction ;
 int test_types_int ;
 int test_types_language ;
 int test_types_script ;
 int test_types_tag ;

int
main (int argc, char **argv)
{
  hb_test_init (&argc, &argv);

  hb_test_add (test_types_int);
  hb_test_add (test_types_direction);
  hb_test_add (test_types_tag);
  hb_test_add (test_types_script);
  hb_test_add (test_types_language);

  return hb_test_run();
}
