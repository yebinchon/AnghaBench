
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef int LPCSTR ;
typedef scalar_t__ DWORD ;


 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static LPSTR strdupA(LPCSTR p)
{
    LPSTR ret;
    DWORD len = (strlen(p) + 1);
    ret = HeapAlloc(GetProcessHeap(), 0, len);
    memcpy(ret, p, len);
    return ret;
}
