
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int range; } ;
typedef TYPE_1__ average_t ;


 int AvgReset (TYPE_1__*) ;

void AvgInit(average_t *avg, int range)
{
    avg->range = range;
    AvgReset(avg);
}
