
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef int HMODULE ;
typedef int * FARPROC ;


 int * GetProcAddress (int ,char*) ;

FARPROC _getdllprocaddr(intptr_t hModule, char* lpProcName, intptr_t iOrdinal)
{
 if (lpProcName != ((void*)0))
  return GetProcAddress((HMODULE) hModule, lpProcName);
 else
  return GetProcAddress((HMODULE) hModule, (LPSTR)iOrdinal);
    return (((void*)0));
}
