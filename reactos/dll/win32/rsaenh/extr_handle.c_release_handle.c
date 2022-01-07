
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct handle_table {unsigned int iFirstFree; int mutex; TYPE_1__* paEntries; } ;
struct TYPE_5__ {int (* destructor ) (TYPE_2__*) ;int refcount; } ;
struct TYPE_4__ {unsigned int iNextFree; TYPE_2__* pObject; } ;
typedef TYPE_2__ OBJECTHDR ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 unsigned int HANDLE2INDEX (int ) ;
 scalar_t__ InterlockedDecrement (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,struct handle_table*,...) ;
 int TRUE ;
 int is_valid_handle (struct handle_table*,int ,int ) ;
 int stub1 (TYPE_2__*) ;

BOOL release_handle(struct handle_table *lpTable, HCRYPTKEY handle, DWORD dwType)
{
    unsigned int index = HANDLE2INDEX(handle);
    OBJECTHDR *pObject;
    BOOL ret = FALSE;

    TRACE("(lpTable=%p, handle=%ld)\n", lpTable, handle);

    EnterCriticalSection(&lpTable->mutex);

    if (!is_valid_handle(lpTable, handle, dwType))
        goto exit;

    pObject = lpTable->paEntries[index].pObject;
    if (InterlockedDecrement(&pObject->refcount) == 0)
    {
        TRACE("destroying handle %ld\n", handle);
        if (pObject->destructor)
            pObject->destructor(pObject);
    }

    lpTable->paEntries[index].pObject = ((void*)0);
    lpTable->paEntries[index].iNextFree = lpTable->iFirstFree;
    lpTable->iFirstFree = index;

    ret = TRUE;
exit:
    LeaveCriticalSection(&lpTable->mutex);
    return ret;
}
