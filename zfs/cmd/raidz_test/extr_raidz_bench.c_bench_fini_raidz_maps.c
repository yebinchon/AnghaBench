
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_3__ {int io_abd; } ;


 int bzero (TYPE_1__*,int) ;
 int max_data_size ;
 int raidz_free (int ,int ) ;
 TYPE_1__ zio_bench ;

__attribute__((used)) static void
bench_fini_raidz_maps(void)
{

 raidz_free(zio_bench.io_abd, max_data_size);
 bzero(&zio_bench, sizeof (zio_t));
}
