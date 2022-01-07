
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PPERF_INFO ;



unsigned
NullInit(void **Context, PPERF_INFO PerfInfo, unsigned Reps)
{
  *Context = ((void*)0);

  return Reps;
}
