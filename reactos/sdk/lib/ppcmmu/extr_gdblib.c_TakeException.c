
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_trap_frame_t ;


 scalar_t__ Continue ;
 int PacketWriteSignal (int) ;
 int * RegisterSaveArea ;
 scalar_t__ SendSignal ;
 int SerialInterrupt (int,int *) ;
 int Signal ;

int TakeException(int n, ppc_trap_frame_t *tf)
{
    Signal = n;
    RegisterSaveArea = tf;
    PacketWriteSignal(Signal);
    SendSignal = 0;
    Continue = 0;
    while(!Continue) SerialInterrupt(n, tf);
    return 1;
}
