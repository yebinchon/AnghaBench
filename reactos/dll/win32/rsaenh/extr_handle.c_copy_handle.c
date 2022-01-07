
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle_table {int mutex; } ;
typedef int OBJECTHDR ;
typedef scalar_t__ HCRYPTKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,struct handle_table*,scalar_t__,scalar_t__*) ;
 int alloc_handle (struct handle_table*,int *,scalar_t__*) ;
 int lookup_handle (struct handle_table*,scalar_t__,int ,int **) ;

BOOL copy_handle(struct handle_table *lpTable, HCRYPTKEY handle, DWORD dwType, HCRYPTKEY *copy)
{
    OBJECTHDR *pObject;
    BOOL ret;

    TRACE("(lpTable=%p, handle=%ld, copy=%p)\n", lpTable, handle, copy);

    EnterCriticalSection(&lpTable->mutex);
    if (!lookup_handle(lpTable, handle, dwType, &pObject))
    {
        *copy = (HCRYPTKEY)INVALID_HANDLE_VALUE;
        LeaveCriticalSection(&lpTable->mutex);
        return FALSE;
    }

    ret = alloc_handle(lpTable, pObject, copy);
    LeaveCriticalSection(&lpTable->mutex);
    return ret;
}
