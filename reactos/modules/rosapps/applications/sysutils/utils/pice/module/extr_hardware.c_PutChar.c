
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef int UCHAR ;
typedef scalar_t__* LPSTR ;


 int Acquire_Output_Lock () ;
 int Flush () ;
 int PrintGraf (size_t,size_t,scalar_t__) ;
 int Release_Output_Lock () ;

void PutChar(LPSTR p,ULONG x,ULONG y)
{
 ULONG i;



    Acquire_Output_Lock();

 for(i=0;p[i]!=0;i++)
 {
  if((UCHAR)p[i]>=0x20 && (UCHAR)p[i]<0x80)
  {
   PrintGraf(x+i,y,p[i]);
  }
 }

    Flush();

    Release_Output_Lock();


}
