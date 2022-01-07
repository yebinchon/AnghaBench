
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nr; int start; } ;
typedef TYPE_1__ UidRange ;


 int CMP (int ,int ) ;

__attribute__((used)) static int uid_range_compare(const UidRange *a, const UidRange *b) {
        int r;

        r = CMP(a->start, b->start);
        if (r != 0)
                return r;

        return CMP(a->nr, b->nr);
}
