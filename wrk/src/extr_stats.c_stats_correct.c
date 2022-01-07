
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_3__ {size_t max; size_t* data; int count; } ;
typedef TYPE_1__ stats ;
typedef int int64_t ;



void stats_correct(stats *stats, int64_t expected) {
    for (uint64_t n = expected * 2; n <= stats->max; n++) {
        uint64_t count = stats->data[n];
        int64_t m = (int64_t) n - expected;
        while (count && m > expected) {
            stats->data[m] += count;
            stats->count += count;
            m -= expected;
        }
    }
}
