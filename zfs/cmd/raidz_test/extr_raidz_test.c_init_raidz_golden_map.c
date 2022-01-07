
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {void* io_abd; int io_size; int io_offset; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_16__ {int const rto_dcols; TYPE_1__* rm_golden; TYPE_1__* zio_golden; int rto_ashift; int rto_dsize; int rto_offset; } ;
typedef TYPE_2__ raidz_test_opts_t ;
typedef TYPE_1__ raidz_map_t ;


 int ERR (char*) ;
 int UMEM_NOFAIL ;
 int VERIFY (TYPE_1__*) ;
 int VERIFY0 (int ) ;
 int cmp_code (TYPE_2__*,TYPE_1__*,int const) ;
 int cmp_data (TYPE_2__*,TYPE_1__*) ;
 int fini_raidz_map (TYPE_1__**,TYPE_1__**) ;
 int init_zio_abd (TYPE_1__*) ;
 void* raidz_alloc (int ) ;
 void* umem_zalloc (int,int ) ;
 int vdev_raidz_generate_parity (TYPE_1__*) ;
 int vdev_raidz_impl_set (char*) ;
 void* vdev_raidz_map_alloc (TYPE_1__*,int ,size_t const,int const) ;

__attribute__((used)) static int
init_raidz_golden_map(raidz_test_opts_t *opts, const int parity)
{
 int err = 0;
 zio_t *zio_test;
 raidz_map_t *rm_test;
 const size_t total_ncols = opts->rto_dcols + parity;

 if (opts->rm_golden) {
  fini_raidz_map(&opts->zio_golden, &opts->rm_golden);
 }

 opts->zio_golden = umem_zalloc(sizeof (zio_t), UMEM_NOFAIL);
 zio_test = umem_zalloc(sizeof (zio_t), UMEM_NOFAIL);

 opts->zio_golden->io_offset = zio_test->io_offset = opts->rto_offset;
 opts->zio_golden->io_size = zio_test->io_size = opts->rto_dsize;

 opts->zio_golden->io_abd = raidz_alloc(opts->rto_dsize);
 zio_test->io_abd = raidz_alloc(opts->rto_dsize);

 init_zio_abd(opts->zio_golden);
 init_zio_abd(zio_test);

 VERIFY0(vdev_raidz_impl_set("original"));

 opts->rm_golden = vdev_raidz_map_alloc(opts->zio_golden,
     opts->rto_ashift, total_ncols, parity);
 rm_test = vdev_raidz_map_alloc(zio_test,
     opts->rto_ashift, total_ncols, parity);

 VERIFY(opts->zio_golden);
 VERIFY(opts->rm_golden);

 vdev_raidz_generate_parity(opts->rm_golden);
 vdev_raidz_generate_parity(rm_test);


 err |= cmp_data(opts, rm_test);
 err |= cmp_code(opts, rm_test, parity);

 if (err)
  ERR("initializing the golden copy ... [FAIL]!\n");


 fini_raidz_map(&zio_test, &rm_test);

 return (err);
}
