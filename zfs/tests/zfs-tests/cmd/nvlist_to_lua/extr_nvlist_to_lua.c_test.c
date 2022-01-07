
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int B_TRUE ;
 int dump_nvlist (int *,int) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int * fnvlist_lookup_nvlist (int *,char*) ;
 int lzc_channel_program (int ,char*,int,int,int *,int **) ;
 int * nvl ;
 int nvlist_equal (int *,int *) ;
 int pool ;
 int printf (char*,...) ;
 int unexpected_failures ;

__attribute__((used)) static void
test(const char *testname, boolean_t expect_success, boolean_t expect_match)
{
 char *progstr = "input = ...; return {output=input}";

 nvlist_t *outnvl;

 (void) printf("\nrunning test '%s'; input:\n", testname);
 dump_nvlist(nvl, 4);

 int err = lzc_channel_program(pool, progstr,
     10 * 1000 * 1000, 10 * 1024 * 1024, nvl, &outnvl);

 (void) printf("lzc_channel_program returned %u\n", err);
 dump_nvlist(outnvl, 5);

 if (err == 0 && expect_match) {






  nvlist_t *real_outnvl = fnvlist_lookup_nvlist(outnvl, "return");
  real_outnvl = fnvlist_lookup_nvlist(real_outnvl, "output");
  if (!nvlist_equal(nvl, real_outnvl)) {
   unexpected_failures = B_TRUE;
   (void) printf("unexpected input/output mismatch for "
       "case: %s\n", testname);
  }
 }
 if (err != 0 && expect_success) {
  unexpected_failures = B_TRUE;
  (void) printf("unexpected FAIL of case: %s\n", testname);
 }

 fnvlist_free(nvl);
 nvl = fnvlist_alloc();
}
