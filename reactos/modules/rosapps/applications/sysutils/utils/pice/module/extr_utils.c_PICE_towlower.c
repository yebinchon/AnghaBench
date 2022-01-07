
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



wchar_t PICE_towlower(wchar_t c)
{
   if ( c>=L'A' && c<=L'Z' )
       return (c - (L'A' - L'a'));
   return(c);
}
