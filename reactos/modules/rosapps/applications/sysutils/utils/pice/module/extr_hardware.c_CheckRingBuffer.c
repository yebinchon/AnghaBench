
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cy; } ;


 int Acquire_Output_Lock () ;
 size_t OUTPUT_WINDOW ;
 int PrintRingBuffer (scalar_t__) ;
 int Release_Output_Lock () ;
 scalar_t__ ulInPos ;
 scalar_t__ ulOldInPos ;
 TYPE_1__* wWindow ;

void CheckRingBuffer(void)
{


    Acquire_Output_Lock();

 if(ulInPos != ulOldInPos )
 {
  ulOldInPos = ulInPos;
  PrintRingBuffer(wWindow[OUTPUT_WINDOW].cy-1);
 }

    Release_Output_Lock();


}
