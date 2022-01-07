
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float INPUT_RATE_MAX ;
 float INPUT_RATE_MIN ;
 double fabs (float) ;
 double floor (double) ;

__attribute__((used)) static inline float
AdjustRateFine(float rate, int const dir)
{
    float rate_min = INPUT_RATE_MIN;
    float rate_max = INPUT_RATE_MAX;
    int sign = rate < 0 ? -1 : 1;
    rate = floor(fabs(rate) / 0.1 + dir + 0.05) * 0.1;
    if (rate < rate_min)
       rate = rate_min;
    else if (rate > rate_max)
        rate = rate_max;
    return rate * sign;
}
