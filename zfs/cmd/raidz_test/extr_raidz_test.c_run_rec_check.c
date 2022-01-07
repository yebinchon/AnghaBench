
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_6__ {int * rm_golden; int * zio_golden; } ;
typedef TYPE_1__ raidz_test_opts_t ;
typedef int raidz_map_t ;


 char* DBLSEP ;
 int D_INFO ;
 int LOG (int ,char*,...) ;
 int PARITY_PQR ;
 unsigned int RAIDZ_REC_NUM ;
 char* SEP ;
 int fini_raidz_map (int **,int **) ;
 unsigned int init_raidz_golden_map (TYPE_1__*,int ) ;
 int * init_raidz_map (TYPE_1__*,int **,int ) ;
 scalar_t__ raidz_impl_names ;
 int * raidz_rec_name ;
 scalar_t__ run_rec_check_impl (TYPE_1__*,int *,unsigned int) ;
 int vdev_raidz_generate_parity (int *) ;
 scalar_t__ vdev_raidz_impl_set (char*) ;

__attribute__((used)) static int
run_rec_check(raidz_test_opts_t *opts)
{
 char **impl_name;
 unsigned fn, err = 0;
 zio_t *zio_test;
 raidz_map_t *rm_test;

 err = init_raidz_golden_map(opts, PARITY_PQR);
 if (0 != err)
  return (err);

 LOG(D_INFO, DBLSEP);
 LOG(D_INFO, "Testing data reconstruction...\n");

 for (impl_name = (char **)raidz_impl_names+1; *impl_name != ((void*)0);
     impl_name++) {

  LOG(D_INFO, SEP);
  LOG(D_INFO, "\tTesting [%s] implementation...", *impl_name);

  if (vdev_raidz_impl_set(*impl_name) != 0) {
   LOG(D_INFO, "[SKIP]\n");
   continue;
  } else
   LOG(D_INFO, "[SUPPORTED]\n");



  rm_test = init_raidz_map(opts, &zio_test, PARITY_PQR);

  vdev_raidz_generate_parity(rm_test);

  for (fn = 0; fn < RAIDZ_REC_NUM; fn++) {

   LOG(D_INFO, "\t\tTesting method [%s] ...",
       raidz_rec_name[fn]);

   if (run_rec_check_impl(opts, rm_test, fn) != 0) {
    LOG(D_INFO, "[FAIL]\n");
    err++;

   } else
    LOG(D_INFO, "[PASS]\n");

  }

  fini_raidz_map(&zio_test, &rm_test);
 }

 fini_raidz_map(&opts->zio_golden, &opts->rm_golden);

 return (err);
}
