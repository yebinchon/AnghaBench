
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int counter; } ;
struct stats_metric {TYPE_1__ value; int name; } ;
struct stats {int dummy; } ;
struct array {int dummy; } ;
typedef int rstatus_t ;


 int NC_OK ;
 struct stats_metric* array_get (struct array*,scalar_t__) ;
 scalar_t__ array_n (struct array*) ;
 int stats_add_num (struct stats*,int *,int ) ;

__attribute__((used)) static rstatus_t
stats_copy_metric(struct stats *st, struct array *metric)
{
    rstatus_t status;
    uint32_t i;

    for (i = 0; i < array_n(metric); i++) {
        struct stats_metric *stm = array_get(metric, i);

        status = stats_add_num(st, &stm->name, stm->value.counter);
        if (status != NC_OK) {
            return status;
        }
    }

    return NC_OK;
}
