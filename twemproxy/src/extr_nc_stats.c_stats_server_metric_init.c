
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct stats_server {int metric; } ;
struct stats_metric {int dummy; } ;
typedef scalar_t__ rstatus_t ;


 scalar_t__ NC_OK ;
 size_t STATS_SERVER_NFIELD ;
 scalar_t__ array_init (int *,size_t,int) ;
 struct stats_metric* array_push (int *) ;
 int stats_metric_init (struct stats_metric*) ;
 struct stats_metric* stats_server_codec ;

__attribute__((used)) static rstatus_t
stats_server_metric_init(struct stats_server *sts)
{
    rstatus_t status;
    uint32_t i, nfield = STATS_SERVER_NFIELD;

    status = array_init(&sts->metric, nfield, sizeof(struct stats_metric));
    if (status != NC_OK) {
        return status;
    }

    for (i = 0; i < nfield; i++) {
        struct stats_metric *stm = array_push(&sts->metric);


        *stm = stats_server_codec[i];


        stats_metric_init(stm);
    }

    return NC_OK;
}
