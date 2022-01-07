
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef scalar_t__ UInt32 ;
typedef int LONG ;
typedef int CSemaphore ;


 int Semaphore_Release (int *,int ,int *) ;

WRes Semaphore_ReleaseN(CSemaphore *p, UInt32 num)
  { return Semaphore_Release(p, (LONG)num, ((void*)0)); }
