
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct stats_metric {int dummy; } ;
struct array {int dummy; } ;


 int ASSERT (int) ;
 scalar_t__ STATS_POOL_NFIELD ;
 scalar_t__ STATS_SERVER_NFIELD ;
 struct stats_metric* array_get (struct array*,scalar_t__) ;
 scalar_t__ array_n (struct array*) ;
 int stats_metric_init (struct stats_metric*) ;

__attribute__((used)) static void
stats_metric_reset(struct array *stats_metric)
{
    uint32_t i, nmetric;

    nmetric = array_n(stats_metric);
    ASSERT(nmetric == STATS_POOL_NFIELD || nmetric == STATS_SERVER_NFIELD);

    for (i = 0; i < nmetric; i++) {
        struct stats_metric *stm = array_get(stats_metric, i);

        stats_metric_init(stm);
    }
}
