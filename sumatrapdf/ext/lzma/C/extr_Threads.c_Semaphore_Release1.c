
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int CSemaphore ;


 int Semaphore_ReleaseN (int *,int) ;

WRes Semaphore_Release1(CSemaphore *p) { return Semaphore_ReleaseN(p, 1); }
