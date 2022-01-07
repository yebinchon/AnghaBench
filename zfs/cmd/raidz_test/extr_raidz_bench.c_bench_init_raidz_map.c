
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_abd; int io_size; scalar_t__ io_offset; } ;


 int init_zio_abd (TYPE_1__*) ;
 int max_data_size ;
 int raidz_alloc (int ) ;
 TYPE_1__ zio_bench ;

__attribute__((used)) static void
bench_init_raidz_map(void)
{
 zio_bench.io_offset = 0;
 zio_bench.io_size = max_data_size;





 zio_bench.io_abd = raidz_alloc(max_data_size);

 init_zio_abd(&zio_bench);
}
