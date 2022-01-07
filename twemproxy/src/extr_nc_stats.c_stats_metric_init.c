
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long counter; long long timestamp; } ;
struct stats_metric {int type; TYPE_1__ value; } ;


 int NOT_REACHED () ;




__attribute__((used)) static void
stats_metric_init(struct stats_metric *stm)
{
    switch (stm->type) {
    case 130:
        stm->value.counter = 0LL;
        break;

    case 129:
        stm->value.counter = 0LL;
        break;

    case 128:
        stm->value.timestamp = 0LL;
        break;

    default:
        NOT_REACHED();
    }
}
