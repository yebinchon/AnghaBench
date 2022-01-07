
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_4__ {scalar_t__ start; scalar_t__ nr; } ;
typedef TYPE_1__ UidRange ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static bool uid_range_intersect(UidRange *range, uid_t start, uid_t nr) {
        assert(range);

        return range->start <= start + nr &&
                range->start + range->nr >= start;
}
