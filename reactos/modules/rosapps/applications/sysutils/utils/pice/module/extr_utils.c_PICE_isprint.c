
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;

BOOLEAN PICE_isprint(char c)
{
 BOOLEAN bResult = FALSE;

 if((ULONG)c>=0x20 && (ULONG)c<=0x7f)
  bResult = TRUE;

 return bResult;
}
