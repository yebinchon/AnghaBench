
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ hrtime_t ;


 scalar_t__ UINT64_MAX ;

__attribute__((used)) static hrtime_t
fmd_event_delta(hrtime_t t1, hrtime_t t2)
{
 uint64_t old = t1;
 uint64_t new = t2;

 return (new >= old ? new - old : (UINT64_MAX - old) + new + 1);
}
