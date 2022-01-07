
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void set_avg(int *min, int *max)
{
    int avg = (*min + *max) / 2;
    *min = avg + 1;
    *max = avg;
}
