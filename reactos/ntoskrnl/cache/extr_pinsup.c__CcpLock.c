
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int CcMutex ;
 int ExAcquireFastMutex (int *) ;

VOID
_CcpLock(const char *file,
         int line)
{

    ExAcquireFastMutex(&CcMutex);
}
