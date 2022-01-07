
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;



double
difftime(
    time_t time1,
    time_t time2)
{
    return (double)(time1 - time2);
}
