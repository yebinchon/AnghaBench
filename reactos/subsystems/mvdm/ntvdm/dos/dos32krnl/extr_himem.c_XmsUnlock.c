
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int UCHAR ;
struct TYPE_4__ {int LockCount; } ;
typedef TYPE_1__* PXMS_HANDLE ;


 TYPE_1__* GetXmsHandleRecord (int ) ;
 int ValidateXmsHandle (TYPE_1__*) ;
 int XMS_STATUS_INVALID_HANDLE ;
 int XMS_STATUS_NOT_LOCKED ;
 int XMS_STATUS_SUCCESS ;

__attribute__((used)) static UCHAR XmsUnlock(WORD Handle)
{
    PXMS_HANDLE HandleEntry = GetXmsHandleRecord(Handle);

    if (!ValidateXmsHandle(HandleEntry))
        return XMS_STATUS_INVALID_HANDLE;

    if (!HandleEntry->LockCount)
        return XMS_STATUS_NOT_LOCKED;


    HandleEntry->LockCount--;

    return XMS_STATUS_SUCCESS;
}
