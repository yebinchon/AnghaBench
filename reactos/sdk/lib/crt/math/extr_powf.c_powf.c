
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pow (double,double) ;

float powf(float x, float y)
{
    return (float)pow((double)x, (double)y);
}
