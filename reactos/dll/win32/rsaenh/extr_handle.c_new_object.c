
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct handle_table {int dummy; } ;
struct TYPE_6__ {int destructor; scalar_t__ refcount; int dwType; } ;
typedef TYPE_1__ OBJECTHDR ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int DESTRUCTOR ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int INVALID_HANDLE_VALUE ;
 int alloc_handle (struct handle_table*,TYPE_1__*,int *) ;

HCRYPTKEY new_object(struct handle_table *lpTable, size_t cbSize, DWORD dwType, DESTRUCTOR destructor,
                        OBJECTHDR **ppObject)
{
    OBJECTHDR *pObject;
    HCRYPTKEY hObject;

    if (ppObject)
        *ppObject = ((void*)0);

    pObject = HeapAlloc(GetProcessHeap(), 0, cbSize);
    if (!pObject)
        return (HCRYPTKEY)INVALID_HANDLE_VALUE;

    pObject->dwType = dwType;
    pObject->refcount = 0;
    pObject->destructor = destructor;

    if (!alloc_handle(lpTable, pObject, &hObject))
        HeapFree(GetProcessHeap(), 0, pObject);
    else
        if (ppObject)
            *ppObject = pObject;

    return hObject;
}
