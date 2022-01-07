
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int RTL_BITMAP ;


 int* AllocateGuarded (int) ;
 int FreeGuarded (int*) ;
 int RtlInitializeBitMap (int *,int*,int) ;
 int RtlNumberOfSetBits (int *) ;
 int ok_int (int ,int) ;

void
Test_RtlNumberOfSetBits(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;

    Buffer = AllocateGuarded(2 * sizeof(*Buffer));
    Buffer[0] = 0xff00ff0f;
    Buffer[1] = 0x3F303F30;

    RtlInitializeBitMap(&BitMapHeader, Buffer, 0);
    ok_int(RtlNumberOfSetBits(&BitMapHeader), 0);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 4);
    ok_int(RtlNumberOfSetBits(&BitMapHeader), 4);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 31);
    ok_int(RtlNumberOfSetBits(&BitMapHeader), 19);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 56);
    ok_int(RtlNumberOfSetBits(&BitMapHeader), 30);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 64);
    ok_int(RtlNumberOfSetBits(&BitMapHeader), 36);
    FreeGuarded(Buffer);
}
