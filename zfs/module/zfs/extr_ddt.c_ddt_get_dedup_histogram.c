
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__** spa_ddt; } ;
typedef TYPE_1__ spa_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
struct TYPE_5__ {int ** ddt_histogram_cache; } ;
typedef TYPE_2__ ddt_t ;
typedef int ddt_histogram_t ;


 int DDT_CLASSES ;
 int DDT_TYPES ;
 int ZIO_CHECKSUM_FUNCTIONS ;
 int ddt_histogram_add (int *,int *) ;

void
ddt_get_dedup_histogram(spa_t *spa, ddt_histogram_t *ddh)
{
 for (enum zio_checksum c = 0; c < ZIO_CHECKSUM_FUNCTIONS; c++) {
  ddt_t *ddt = spa->spa_ddt[c];
  for (enum ddt_type type = 0; type < DDT_TYPES; type++) {
   for (enum ddt_class class = 0; class < DDT_CLASSES;
       class++) {
    ddt_histogram_add(ddh,
        &ddt->ddt_histogram_cache[type][class]);
   }
  }
 }
}
