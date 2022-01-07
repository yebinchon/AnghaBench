
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct handle_table {unsigned int iEntries; int mutex; TYPE_2__* paEntries; } ;
struct TYPE_4__ {TYPE_1__* pObject; } ;
struct TYPE_3__ {scalar_t__ dwType; } ;
typedef int HCRYPTKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 unsigned int HANDLE2INDEX (int ) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,struct handle_table*,int ) ;
 int TRUE ;

BOOL is_valid_handle(struct handle_table *lpTable, HCRYPTKEY handle, DWORD dwType)
{
    unsigned int index = HANDLE2INDEX(handle);
    BOOL ret = FALSE;

    TRACE("(lpTable=%p, handle=%ld)\n", lpTable, handle);

    EnterCriticalSection(&lpTable->mutex);


    if (!handle) goto exit;


    if (index >= lpTable->iEntries) goto exit;


    if (!lpTable->paEntries[index].pObject) goto exit;


    if (lpTable->paEntries[index].pObject->dwType != dwType) goto exit;

    ret = TRUE;
exit:
    LeaveCriticalSection(&lpTable->mutex);
    return ret;
}
