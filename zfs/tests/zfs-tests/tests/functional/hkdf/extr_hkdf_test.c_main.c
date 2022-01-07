
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NELEMS (int *) ;
 int icp_fini () ;
 int icp_init () ;
 int printf (char*) ;
 int run_test (int,int *) ;
 int * test_vectors ;

int
main(int argc, char **argv)
{
 int ret, i;

 icp_init();

 for (i = 0; i < NELEMS(test_vectors); i++) {
  ret = run_test(i, &test_vectors[i]);
  if (ret != 0)
   break;
 }

 icp_fini();

 if (ret == 0) {
  printf("All tests passed successfully.\n");
  return (0);
 } else {
  printf("Test failed.\n");
  return (1);
 }
}
