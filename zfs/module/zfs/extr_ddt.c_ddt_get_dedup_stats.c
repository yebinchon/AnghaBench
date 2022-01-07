
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int ddt_stat_t ;
typedef int ddt_histogram_t ;


 int KM_SLEEP ;
 int ddt_get_dedup_histogram (int *,int *) ;
 int ddt_histogram_stat (int *,int *) ;
 int kmem_free (int *,int) ;
 int * kmem_zalloc (int,int ) ;

void
ddt_get_dedup_stats(spa_t *spa, ddt_stat_t *dds_total)
{
 ddt_histogram_t *ddh_total;

 ddh_total = kmem_zalloc(sizeof (ddt_histogram_t), KM_SLEEP);
 ddt_get_dedup_histogram(spa, ddh_total);
 ddt_histogram_stat(dds_total, ddh_total);
 kmem_free(ddh_total, sizeof (ddt_histogram_t));
}
