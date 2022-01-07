
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* GINT_TO_POINTER (unsigned int) ;
 unsigned int G_N_ELEMENTS (char**) ;
 char** blob_names ;
 int fixture ;
 int hb_test_add (int ) ;
 int hb_test_add_fixture_flavor (int ,void const*,char const*,int ) ;
 int hb_test_init (int*,char***) ;
 int hb_test_run () ;
 int test_blob ;
 int test_blob_empty ;
 int test_blob_subblob ;

int
main (int argc, char **argv)
{
  unsigned int i;

  hb_test_init (&argc, &argv);

  hb_test_add (test_blob_empty);

  for (i = 0; i < G_N_ELEMENTS (blob_names); i++)
  {
    const void *blob_type = GINT_TO_POINTER (i);
    const char *blob_name = blob_names[i];

    hb_test_add_fixture_flavor (fixture, blob_type, blob_name, test_blob);
    hb_test_add_fixture_flavor (fixture, blob_type, blob_name, test_blob_subblob);
  }





  return hb_test_run ();
}
