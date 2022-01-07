
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndTarget; } ;
typedef int INT ;
typedef int HWND ;
typedef int * HICON ;
typedef TYPE_1__ GHOST_DATA ;


 int GCLP_HICON ;
 int GCLP_HICONSM ;
 int GetClassLongPtrW (int ,int ) ;
 TYPE_1__* Ghost_GetData (int ) ;



__attribute__((used)) static HICON
Ghost_GetIcon(HWND hwnd, INT fType)
{
    GHOST_DATA *pData = Ghost_GetData(hwnd);
    HICON hIcon = ((void*)0);

    if (!pData)
        return ((void*)0);


    switch (fType)
    {
        case 129:
        {
            hIcon = (HICON)GetClassLongPtrW(pData->hwndTarget, GCLP_HICON);
            break;
        }

        case 128:
        {
            hIcon = (HICON)GetClassLongPtrW(pData->hwndTarget, GCLP_HICONSM);
            break;
        }
    }

    return hIcon;
}
