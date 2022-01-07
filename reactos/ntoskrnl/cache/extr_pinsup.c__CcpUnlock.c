
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int CcMutex ;
 int ExReleaseFastMutex (int *) ;

VOID
_CcpUnlock(const char *file,
           int line)
{
    ExReleaseFastMutex(&CcMutex);

}
