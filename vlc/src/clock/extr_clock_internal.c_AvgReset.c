
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float value; scalar_t__ count; } ;
typedef TYPE_1__ average_t ;



void AvgReset(average_t *avg)
{
    avg->value = 0.0f;
    avg->count = 0;
}
