
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int timestamp; int counter; } ;
struct stats_metric {int type; TYPE_1__ value; } ;
struct array {int dummy; } ;


 int ASSERT (int) ;
 int NOT_REACHED () ;



 struct stats_metric* array_get (struct array*,scalar_t__) ;
 scalar_t__ array_n (struct array*) ;

__attribute__((used)) static void
stats_aggregate_metric(struct array *dst, struct array *src)
{
    uint32_t i;

    for (i = 0; i < array_n(src); i++) {
        struct stats_metric *stm1, *stm2;

        stm1 = array_get(src, i);
        stm2 = array_get(dst, i);

        ASSERT(stm1->type == stm2->type);

        switch (stm1->type) {
        case 130:
            stm2->value.counter += stm1->value.counter;
            break;

        case 129:
            stm2->value.counter += stm1->value.counter;
            break;

        case 128:
            if (stm1->value.timestamp) {
                stm2->value.timestamp = stm1->value.timestamp;
            }
            break;

        default:
            NOT_REACHED();
        }
    }
}
