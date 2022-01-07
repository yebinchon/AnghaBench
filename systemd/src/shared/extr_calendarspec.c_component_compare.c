
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int repeat; int stop; int start; } ;
typedef TYPE_1__ CalendarComponent ;


 int CMP (int ,int ) ;

__attribute__((used)) static int component_compare(CalendarComponent * const *a, CalendarComponent * const *b) {
        int r;

        r = CMP((*a)->start, (*b)->start);
        if (r != 0)
                return r;

        r = CMP((*a)->stop, (*b)->stop);
        if (r != 0)
                return r;

        return CMP((*a)->repeat, (*b)->repeat);
}
