
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double value; double range; } ;
typedef TYPE_1__ average_t ;



void AvgRescale(average_t *avg, int range)
{
    const double tmp = avg->value * avg->range;

    avg->range = range;
    avg->value = tmp / avg->range;
}
