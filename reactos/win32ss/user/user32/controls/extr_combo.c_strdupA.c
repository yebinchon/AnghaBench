
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef scalar_t__ DWORD ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int memcpy (char*,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static char *strdupA(LPCSTR str)
{
    char *ret;
    DWORD len;

    if(!str) return ((void*)0);

    len = strlen(str);
    ret = HeapAlloc(GetProcessHeap(), 0, len + 1);



        memcpy(ret, str, len + 1);
    return ret;
}
