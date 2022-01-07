
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;


 int DPRINT (char*,...) ;
 int SB_WRITE_BYTE (int,int) ;

VOID BeginPlayback(ULONG BasePort, ULONG BitDepth, ULONG Channels, ULONG BlockSize)
{
    DPRINT("BeginPlayback(%d, %d, %d, %d)\n", BasePort, BitDepth, Channels, BlockSize);
    DPRINT("Initiating playback\n");


    SB_WRITE_BYTE(BasePort, 0xc6);
    SB_WRITE_BYTE(BasePort, 0);
    SB_WRITE_BYTE(BasePort, BlockSize % 256);
    SB_WRITE_BYTE(BasePort, BlockSize / 256);
}
