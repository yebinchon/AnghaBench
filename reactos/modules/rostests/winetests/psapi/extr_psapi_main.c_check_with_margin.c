
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int BOOL ;


 int max (int,int) ;

__attribute__((used)) static BOOL check_with_margin(SIZE_T perf, SIZE_T sysperf, int margin)
{
    return (perf >= max(sysperf, margin) - margin && perf <= sysperf + margin);
}
