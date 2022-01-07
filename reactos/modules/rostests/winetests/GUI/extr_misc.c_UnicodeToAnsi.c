
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPSTR ;
typedef int LPCWSTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,scalar_t__) ;
 scalar_t__ WideCharToMultiByte (int ,int ,int ,int,scalar_t__,scalar_t__,int *,int *) ;
 scalar_t__ wcslen (int ) ;

DWORD
UnicodeToAnsi(LPCWSTR lpSrcStr,
              LPSTR *lpDstStr)
{
    INT length;
    INT ret = 0;

    length = wcslen(lpSrcStr) + 1;

    *lpDstStr = (LPSTR)HeapAlloc(GetProcessHeap(), 0, length);
    if (*lpDstStr)
    {
        ret = WideCharToMultiByte(CP_ACP,
                                  0,
                                  lpSrcStr,
                                  -1,
                                  *lpDstStr,
                                  length,
                                  ((void*)0),
                                  ((void*)0));
    }

    return ret;
}
