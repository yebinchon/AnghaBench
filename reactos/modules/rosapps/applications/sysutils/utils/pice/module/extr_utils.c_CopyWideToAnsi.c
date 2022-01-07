
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef int* PWSTR ;
typedef char* LPSTR ;



void CopyWideToAnsi(LPSTR pAnsi,PWSTR pWide)
{
ULONG j;

 for(j=0;pWide[j]!=0;j++)
 {
        if((char)(pWide[j]>>8)==0)
      pAnsi[j]=(char)(pWide[j]);
        else
            pAnsi[j]=0x20;
 }
 pAnsi[j]=0;

}
