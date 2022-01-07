
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_3__ {long double count; size_t min; size_t max; size_t* data; } ;
typedef TYPE_1__ stats ;


 size_t round (long double) ;

uint64_t stats_percentile(stats *stats, long double p) {
    uint64_t rank = round((p / 100.0) * stats->count + 0.5);
    uint64_t total = 0;
    for (uint64_t i = stats->min; i <= stats->max; i++) {
        total += stats->data[i];
        if (total >= rank) return i;
    }
    return 0;
}
