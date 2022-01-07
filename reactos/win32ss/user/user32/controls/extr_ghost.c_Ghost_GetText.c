
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int INT ;
typedef int HWND ;


 int ERR (char*) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int * HeapReAlloc (int ,int ,int *,int) ;
 int InternalGetWindowText (int ,int *,int) ;

__attribute__((used)) static LPWSTR
Ghost_GetText(HWND hwndTarget, INT *pcchTextW, INT cchExtra)
{
    LPWSTR pszTextW = ((void*)0), pszTextNewW;
    INT cchNonExtra, cchTextW = *pcchTextW;

    pszTextNewW = HeapAlloc(GetProcessHeap(), 0, cchTextW * sizeof(WCHAR));
    for (;;)
    {
        if (!pszTextNewW)
        {
            ERR("HeapAlloc failed\n");
            if (pszTextW)
                HeapFree(GetProcessHeap(), 0, pszTextW);
            return ((void*)0);
        }
        pszTextW = pszTextNewW;

        cchNonExtra = cchTextW - cchExtra;
        if (InternalGetWindowText(hwndTarget, pszTextW,
                                  cchNonExtra) < cchNonExtra - 1)
        {
            break;
        }

        cchTextW *= 2;
        pszTextNewW = HeapReAlloc(GetProcessHeap(), 0, pszTextW,
                                  cchTextW * sizeof(WCHAR));
    }

    *pcchTextW = cchTextW;
    return pszTextW;
}
