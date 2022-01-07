
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int * LPTSTR ;
typedef scalar_t__ DWORD ;


 scalar_t__ VER_KEY_END ;
 int VerQueryValueW (int ,scalar_t__,int *,scalar_t__*) ;
 int hmemVersion ;
 int lpVersionBuffer ;
 int lstrcpy (scalar_t__,int *) ;
 scalar_t__ szVersionKey ;

LPTSTR
GetVersionDatum(LPTSTR pszName)
{
   DWORD cbValue=0;
   LPTSTR lpValue;

   if (!hmemVersion)
      return ((void*)0);

   lstrcpy(szVersionKey + VER_KEY_END, pszName);

   VerQueryValueW(lpVersionBuffer, szVersionKey, (LPVOID*)&lpValue, &cbValue);

   return (cbValue != 0) ? lpValue : ((void*)0);
}
