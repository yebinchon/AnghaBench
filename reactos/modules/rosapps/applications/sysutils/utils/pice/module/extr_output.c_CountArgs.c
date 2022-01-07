
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef char* LPSTR ;



ULONG CountArgs(LPSTR fmt)
{
 ULONG count=0;

 while(*fmt)
 {
  if(*fmt=='%' && *(fmt+1)!='%')
   count++;
  fmt++;
 }
 return count;
}
