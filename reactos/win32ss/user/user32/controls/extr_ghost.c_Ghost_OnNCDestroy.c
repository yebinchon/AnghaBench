
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bDestroyTarget; int hwndTarget; int * hbm32bpp; } ;
typedef int HWND ;
typedef TYPE_1__ GHOST_DATA ;


 int DeleteObject (int *) ;
 int FNID_DESTROY ;
 int GHOST_PROP ;
 int GWLP_USERDATA ;
 int GetProcessHeap () ;
 int Ghost_DestroyTarget (TYPE_1__*) ;
 TYPE_1__* Ghost_GetData (int ) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int NtUserSetWindowFNID (int ,int ) ;
 int PostQuitMessage (int ) ;
 int RemovePropW (int ,int ) ;
 int SW_SHOWNOACTIVATE ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int ShowWindowAsync (int ,int ) ;

__attribute__((used)) static void
Ghost_OnNCDestroy(HWND hwnd)
{

    GHOST_DATA *pData = Ghost_GetData(hwnd);
    if (pData)
    {
        SetWindowLongPtrW(hwnd, GWLP_USERDATA, 0);


        DeleteObject(pData->hbm32bpp);
        pData->hbm32bpp = ((void*)0);


        RemovePropW(pData->hwndTarget, GHOST_PROP);


        ShowWindowAsync(pData->hwndTarget, SW_SHOWNOACTIVATE);


        if (pData->bDestroyTarget)
        {
            Ghost_DestroyTarget(pData);
        }

        HeapFree(GetProcessHeap(), 0, pData);
    }

    NtUserSetWindowFNID(hwnd, FNID_DESTROY);

    PostQuitMessage(0);
}
