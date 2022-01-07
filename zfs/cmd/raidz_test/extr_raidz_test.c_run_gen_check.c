
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_7__ {int * rm_golden; int * zio_golden; int rto_sanity; } ;
typedef TYPE_1__ raidz_test_opts_t ;
typedef int raidz_map_t ;
struct TYPE_8__ {scalar_t__ rto_should_stop; } ;


 char* DBLSEP ;
 int D_INFO ;
 int LOG (int ,char*,...) ;
 int PARITY_PQR ;
 int RAIDZ_GEN_NUM ;
 char* SEP ;
 int VERIFY (int *) ;
 scalar_t__ cmp_code (TYPE_1__*,int *,int) ;
 int fini_raidz_map (int **,int **) ;
 int init_raidz_golden_map (TYPE_1__*,int ) ;
 int * init_raidz_map (TYPE_1__*,int **,int) ;
 int * raidz_gen_name ;
 scalar_t__ raidz_impl_names ;
 TYPE_3__ rto_opts ;
 int vdev_raidz_generate_parity (int *) ;
 scalar_t__ vdev_raidz_impl_set (char*) ;

__attribute__((used)) static int
run_gen_check(raidz_test_opts_t *opts)
{
 char **impl_name;
 int fn, err = 0;
 zio_t *zio_test;
 raidz_map_t *rm_test;

 err = init_raidz_golden_map(opts, PARITY_PQR);
 if (0 != err)
  return (err);

 LOG(D_INFO, DBLSEP);
 LOG(D_INFO, "Testing parity generation...\n");

 for (impl_name = (char **)raidz_impl_names+1; *impl_name != ((void*)0);
     impl_name++) {

  LOG(D_INFO, SEP);
  LOG(D_INFO, "\tTesting [%s] implementation...", *impl_name);

  if (0 != vdev_raidz_impl_set(*impl_name)) {
   LOG(D_INFO, "[SKIP]\n");
   continue;
  } else {
   LOG(D_INFO, "[SUPPORTED]\n");
  }

  for (fn = 0; fn < RAIDZ_GEN_NUM; fn++) {


   if (rto_opts.rto_should_stop)
    return (err);


   rm_test = init_raidz_map(opts, &zio_test, fn+1);
   VERIFY(rm_test);

   LOG(D_INFO, "\t\tTesting method [%s] ...",
       raidz_gen_name[fn]);

   if (!opts->rto_sanity)
    vdev_raidz_generate_parity(rm_test);

   if (cmp_code(opts, rm_test, fn+1) != 0) {
    LOG(D_INFO, "[FAIL]\n");
    err++;
   } else
    LOG(D_INFO, "[PASS]\n");

   fini_raidz_map(&zio_test, &rm_test);
  }
 }

 fini_raidz_map(&opts->zio_golden, &opts->rm_golden);

 return (err);
}
