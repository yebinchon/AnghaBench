
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int ** spa_ddt; } ;
typedef TYPE_1__ spa_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef int ddt_t ;
struct TYPE_14__ {scalar_t__ dds_blocks; } ;
typedef TYPE_2__ ddt_stat_t ;
typedef TYPE_2__ ddt_histogram_t ;
typedef int dds_total ;
typedef int ddh_total ;


 int DDT_CLASSES ;
 int DDT_TYPES ;
 int ZIO_CHECKSUM_FUNCTIONS ;
 int bzero (TYPE_2__*,int) ;
 int ddt_get_dedup_histogram (TYPE_1__*,TYPE_2__*) ;
 int ddt_get_dedup_stats (TYPE_1__*,TYPE_2__*) ;
 int dump_ddt (int *,int,int) ;
 int dump_dedup_ratio (TYPE_2__*) ;
 int* dump_opt ;
 int printf (char*) ;
 int zpool_dump_ddt (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void
dump_all_ddts(spa_t *spa)
{
 ddt_histogram_t ddh_total;
 ddt_stat_t dds_total;

 bzero(&ddh_total, sizeof (ddh_total));
 bzero(&dds_total, sizeof (dds_total));

 for (enum zio_checksum c = 0; c < ZIO_CHECKSUM_FUNCTIONS; c++) {
  ddt_t *ddt = spa->spa_ddt[c];
  for (enum ddt_type type = 0; type < DDT_TYPES; type++) {
   for (enum ddt_class class = 0; class < DDT_CLASSES;
       class++) {
    dump_ddt(ddt, type, class);
   }
  }
 }

 ddt_get_dedup_stats(spa, &dds_total);

 if (dds_total.dds_blocks == 0) {
  (void) printf("All DDTs are empty\n");
  return;
 }

 (void) printf("\n");

 if (dump_opt['D'] > 1) {
  (void) printf("DDT histogram (aggregated over all DDTs):\n");
  ddt_get_dedup_histogram(spa, &ddh_total);
  zpool_dump_ddt(&dds_total, &ddh_total);
 }

 dump_dedup_ratio(&dds_total);
}
