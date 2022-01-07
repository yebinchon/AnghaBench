
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT_PTR ;
typedef int UINT ;
struct TYPE_6__ {void* dwClientInstance; void* dwCallback; int dwFlags; int type; } ;
typedef TYPE_1__* LPWINE_MLD ;
typedef scalar_t__* LPHANDLE ;
typedef scalar_t__ HANDLE ;
typedef void* DWORD_PTR ;
typedef int DWORD ;


 int ERR (char*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HIWORD (int ) ;
 TYPE_1__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 size_t MAX_MM_MLDRVS ;
 size_t MMDRV_GetNum (int ) ;
 TYPE_1__** MM_MLDrvs ;
 int TRACE (char*,int ,int ,scalar_t__*,int *,void**,void**) ;

LPWINE_MLD MMDRV_Alloc(UINT size, UINT type, LPHANDLE hndl, DWORD* dwFlags,
       DWORD_PTR* dwCallback, DWORD_PTR* dwInstance)
{
    LPWINE_MLD mld;
    UINT_PTR i;
    TRACE("(%d, %04x, %p, %p, %p, %p)\n",
          size, type, hndl, dwFlags, dwCallback, dwInstance);

    mld = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, size);
    if (!mld) return ((void*)0);


    for (i = 0; i < MAX_MM_MLDRVS; i++) if (!MM_MLDrvs[i]) break;

    if (i == MAX_MM_MLDRVS) {

 ERR("Too many open drivers\n");
        HeapFree(GetProcessHeap(), 0, mld);
 return ((void*)0);
    }
    MM_MLDrvs[i] = mld;
    *hndl = (HANDLE)(i | 0x8000);

    mld->type = type;
    if ((UINT_PTR)*hndl < MMDRV_GetNum(type) || ((UINT_PTR)*hndl >> 16)) {




 ERR("Shouldn't happen. Bad allocation scheme\n");
    }

    mld->dwFlags = HIWORD(*dwFlags);
    mld->dwCallback = *dwCallback;
    mld->dwClientInstance = *dwInstance;

    return mld;
}
