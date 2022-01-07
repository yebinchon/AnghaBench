
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpal_v0 ;
 int cpal_v1 ;
 int hb_face_destroy (int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;

int
main (int argc, char **argv)
{
  int status = 0;

  hb_test_init (&argc, &argv);
  status = hb_test_run();
  hb_face_destroy (cpal_v0);
  hb_face_destroy (cpal_v1);
  return status;
}
