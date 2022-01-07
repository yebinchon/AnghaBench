
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct handle_table {int mutex; TYPE_1__* paEntries; } ;
struct TYPE_2__ {int * pObject; } ;
typedef int OBJECTHDR ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 size_t HANDLE2INDEX (int ) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,struct handle_table*,int ,int **) ;
 int TRUE ;
 int is_valid_handle (struct handle_table*,int ,int ) ;

BOOL lookup_handle(struct handle_table *lpTable, HCRYPTKEY handle, DWORD dwType, OBJECTHDR **lplpObject)
{
    BOOL ret = FALSE;

    TRACE("(lpTable=%p, handle=%ld, lplpObject=%p)\n", lpTable, handle, lplpObject);

    EnterCriticalSection(&lpTable->mutex);
    if (!is_valid_handle(lpTable, handle, dwType))
    {
        *lplpObject = ((void*)0);
        goto exit;
    }
    *lplpObject = lpTable->paEntries[HANDLE2INDEX(handle)].pObject;

    ret = TRUE;
exit:
    LeaveCriticalSection(&lpTable->mutex);
    return ret;
}
