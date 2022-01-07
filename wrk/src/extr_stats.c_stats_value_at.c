
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_3__ {size_t min; size_t max; size_t* data; } ;
typedef TYPE_1__ stats ;



uint64_t stats_value_at(stats *stats, uint64_t index, uint64_t *count) {
    *count = 0;
    for (uint64_t i = stats->min; i <= stats->max; i++) {
        if (stats->data[i] && (*count)++ == index) {
            *count = stats->data[i];
            return i;
        }
    }
    return 0;
}
