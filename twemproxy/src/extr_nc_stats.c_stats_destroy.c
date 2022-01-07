
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {int current; int shadow; int sum; } ;


 int nc_free (struct stats*) ;
 int stats_destroy_buf (struct stats*) ;
 int stats_pool_unmap (int *) ;
 int stats_stop_aggregator (struct stats*) ;

void
stats_destroy(struct stats *st)
{
    stats_stop_aggregator(st);
    stats_pool_unmap(&st->sum);
    stats_pool_unmap(&st->shadow);
    stats_pool_unmap(&st->current);
    stats_destroy_buf(st);
    nc_free(st);
}
