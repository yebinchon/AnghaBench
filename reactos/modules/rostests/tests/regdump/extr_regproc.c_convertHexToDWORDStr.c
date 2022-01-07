
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int TCHAR ;
typedef int DWORD ;
typedef int BYTE ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int _T (char*) ;
 int _stprintf (int *,int ,int ) ;
 int memcpy (int *,int *,int) ;

TCHAR* convertHexToDWORDStr(BYTE* buf, ULONG bufLen)
{
    TCHAR* str;
    DWORD dw;

    if (bufLen != sizeof(DWORD)) return ((void*)0);
    str = HeapAlloc(GetProcessHeap(), 0, ((bufLen*2)+1)*sizeof(TCHAR));
    memcpy(&dw, buf, sizeof(DWORD));
    _stprintf(str, _T("%08lx"), dw);

    return str;
}
