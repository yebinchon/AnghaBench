
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct stats_metric {int dummy; } ;
struct array {int dummy; } ;
typedef scalar_t__ rstatus_t ;


 scalar_t__ NC_OK ;
 size_t STATS_POOL_NFIELD ;
 scalar_t__ array_init (struct array*,size_t,int) ;
 struct stats_metric* array_push (struct array*) ;
 int stats_metric_init (struct stats_metric*) ;
 struct stats_metric* stats_pool_codec ;

__attribute__((used)) static rstatus_t
stats_pool_metric_init(struct array *stats_metric)
{
    rstatus_t status;
    uint32_t i, nfield = STATS_POOL_NFIELD;

    status = array_init(stats_metric, nfield, sizeof(struct stats_metric));
    if (status != NC_OK) {
        return status;
    }

    for (i = 0; i < nfield; i++) {
        struct stats_metric *stm = array_push(stats_metric);


        *stm = stats_pool_codec[i];


        stats_metric_init(stm);
    }

    return NC_OK;
}
