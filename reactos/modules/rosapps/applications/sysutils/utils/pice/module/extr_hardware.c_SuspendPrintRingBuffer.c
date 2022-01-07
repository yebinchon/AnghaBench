
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;


 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 int bSuspendPrintRingBuffer ;

void SuspendPrintRingBuffer(BOOLEAN bSuspend)
{
    ENTER_FUNC();
    bSuspendPrintRingBuffer = bSuspend;
    LEAVE_FUNC();
}
