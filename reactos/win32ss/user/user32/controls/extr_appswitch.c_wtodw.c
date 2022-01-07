
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;



DWORD wtodw(const WCHAR *psz)
{
   const WCHAR *pch = psz;
   DWORD Value = 0;
   while ('0' <= *pch && *pch <= '9')
   {
      Value *= 10;
      Value += *pch - L'0';
   }
   return Value;
}
