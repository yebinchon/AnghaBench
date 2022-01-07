
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ UCHAR ;
typedef int* PULONG ;
typedef char* LPSTR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;

BOOLEAN ReadHex(LPSTR p,PULONG pValue)
{
    ULONG result=0,i;

 for(i=0;i<8 && p[i]!=0 && p[i]!=' ';i++)
 {
  if(p[i]>='0' && p[i]<='9')
  {
   result<<=4;
   result|=(ULONG)(UCHAR)(p[i]-'0');
  }
  else if(p[i]>='A' && p[i]<='F')
  {
   result<<=4;
   result|=(ULONG)(UCHAR)(p[i]-'A'+10);
  }
  else if(p[i]>='a' && p[i]<='f')
  {
   result<<=4;
   result|=(ULONG)(UCHAR)(p[i]-'a'+10);
  }
  else
   return FALSE;
 }

    *pValue = result;
    return TRUE;
}
