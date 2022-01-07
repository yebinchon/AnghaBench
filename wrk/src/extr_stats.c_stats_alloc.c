
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int limit; int min; } ;
typedef TYPE_1__ stats ;


 int UINT64_MAX ;
 TYPE_1__* zcalloc (int) ;

stats *stats_alloc(uint64_t max) {
    uint64_t limit = max + 1;
    stats *s = zcalloc(sizeof(stats) + sizeof(uint64_t) * limit);
    s->limit = limit;
    s->min = UINT64_MAX;
    return s;
}
