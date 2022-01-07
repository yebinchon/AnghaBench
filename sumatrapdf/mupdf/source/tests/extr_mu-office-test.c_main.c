
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MuOfficeLib ;
typedef int MuError ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int MuOfficeLib_create (int **) ;
 int MuOfficeLib_destroy (int *) ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int test_async (int *) ;
 int test_sync (int *) ;

int main(int argc, char **argv)
{
 MuOfficeLib *mu;
 MuError err;
 int ret;

 err = MuOfficeLib_create(&mu);
 if (err)
 {
  fprintf(stderr, "Failed to create lib instance: error=%d\n", err);
  return EXIT_FAILURE;
 }

 ret = test_async(mu);
 if (ret)
  return ret;

 ret = test_sync(mu);
 if (ret)
  return ret;

 MuOfficeLib_destroy(mu);

 return EXIT_SUCCESS;
}
