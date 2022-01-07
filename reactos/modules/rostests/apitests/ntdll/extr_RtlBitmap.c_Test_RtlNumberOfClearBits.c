
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int RTL_BITMAP ;


 int* AllocateGuarded (int) ;
 int FreeGuarded (int*) ;
 int RtlInitializeBitMap (int *,int*,int) ;
 int RtlNumberOfClearBits (int *) ;
 int ok_int (int ,int) ;

void
Test_RtlNumberOfClearBits(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;

    Buffer = AllocateGuarded(2 * sizeof(*Buffer));
    Buffer[0] = 0xff00fff0;
    Buffer[1] = 0x3F303F30;

    RtlInitializeBitMap(&BitMapHeader, Buffer, 0);
    ok_int(RtlNumberOfClearBits(&BitMapHeader), 0);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 4);
    ok_int(RtlNumberOfClearBits(&BitMapHeader), 4);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 31);
    ok_int(RtlNumberOfClearBits(&BitMapHeader), 12);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 56);
    ok_int(RtlNumberOfClearBits(&BitMapHeader), 26);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 64);
    ok_int(RtlNumberOfClearBits(&BitMapHeader), 28);
    FreeGuarded(Buffer);
}
