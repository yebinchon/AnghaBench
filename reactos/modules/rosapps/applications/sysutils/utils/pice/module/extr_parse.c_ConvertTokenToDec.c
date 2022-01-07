
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int* PULONG ;
typedef char* LPSTR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;

BOOLEAN ConvertTokenToDec(LPSTR p,PULONG pValue)
{
    ULONG result=0;
    char c;

 while((c = *p))
 {
  if(c >= '0' && c <= '9')
  {
   result *= 10;
   result += (ULONG)(c - '0');
  }
  else
   return FALSE;

        p++;
 }
    *pValue = result;
    return TRUE;
}
