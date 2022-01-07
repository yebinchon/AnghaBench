
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef void* ULONG_PTR ;
struct TYPE_7__ {void* dwLower; void* dwUpper; } ;
typedef int SecurePackage ;
typedef int SecHandle ;
typedef int SECURITY_STATUS ;
typedef TYPE_1__* PSecHandle ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int SEC_E_INSUFFICIENT_MEMORY ;
 int SEC_E_INVALID_HANDLE ;
 int SEC_E_OK ;
 int TRACE (char*,TYPE_1__*,int *,TYPE_1__*) ;

__attribute__((used)) static SECURITY_STATUS SECUR32_makeSecHandle(PSecHandle phSec,
 SecurePackage *package, PSecHandle realHandle)
{
    SECURITY_STATUS ret;

    TRACE("%p %p %p\n", phSec, package, realHandle);

    if (phSec && package && realHandle)
    {
        PSecHandle newSec = HeapAlloc(GetProcessHeap(), 0, sizeof(SecHandle));

        if (newSec)
        {
            *newSec = *realHandle;
            phSec->dwUpper = (ULONG_PTR)package;
            phSec->dwLower = (ULONG_PTR)newSec;
            ret = SEC_E_OK;
        }
        else
            ret = SEC_E_INSUFFICIENT_MEMORY;
    }
    else
        ret = SEC_E_INVALID_HANDLE;
    return ret;
}
