
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LPWSTR ;
typedef int LPCSTR ;
typedef int INT ;
typedef int DWORD ;


 int CP_ACP ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int MultiByteToWideChar (int ,int ,int ,int,scalar_t__,int) ;
 int strlen (int ) ;

DWORD
AnsiToUnicode(LPCSTR lpSrcStr,
              LPWSTR *lpDstStr)
{
    INT length;
    INT ret = 0;

    length = strlen(lpSrcStr) + 1;

    *lpDstStr = (LPWSTR)HeapAlloc(GetProcessHeap(), 0, length * sizeof(WCHAR));
    if (*lpDstStr)
    {
        ret = MultiByteToWideChar(CP_ACP,
                                  0,
                                  lpSrcStr,
                                  -1,
                                  *lpDstStr,
                                  length);
    }

    return ret;
}
