
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int RTL_BITMAP ;


 int* AllocateGuarded (int) ;
 int FreeGuarded (int*) ;
 int RtlInitializeBitMap (int *,int*,int) ;
 int RtlSetBits (int *,int,int) ;
 int memset (int*,int,int) ;
 int ok_hex (int,int) ;

void
Test_RtlSetBits(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;
    ULONG BufferSize = 2 * sizeof(*Buffer);

    Buffer = AllocateGuarded(BufferSize);
    RtlInitializeBitMap(&BitMapHeader, Buffer, 19);

    memset(Buffer, 0x00, BufferSize);
    RtlSetBits(&BitMapHeader, 0, 0);
    ok_hex(Buffer[0], 0x00000000);
    ok_hex(Buffer[1], 0x00000000);

    memset(Buffer, 0x00, BufferSize);
    RtlSetBits(&BitMapHeader, 0, 1);
    ok_hex(Buffer[0], 0x00000001);
    ok_hex(Buffer[1], 0x00000000);

    memset(Buffer, 0x00, BufferSize);
    RtlSetBits(&BitMapHeader, 21, 1);
    ok_hex(Buffer[0], 0x00200000);
    ok_hex(Buffer[1], 0x00000000);

    memset(Buffer, 0x00, BufferSize);
    RtlSetBits(&BitMapHeader, 7, 9);
    ok_hex(Buffer[0], 0x0000ff80);
    ok_hex(Buffer[1], 0x00000000);

    memset(Buffer, 0x00, BufferSize);
    RtlSetBits(&BitMapHeader, 13, 22);
    ok_hex(Buffer[0], 0xffffe000);
    ok_hex(Buffer[1], 0x00000007);

    memset(Buffer, 0x00, BufferSize);
    RtlSetBits(&BitMapHeader, 63, 1);
    ok_hex(Buffer[0], 0x00000000);
    ok_hex(Buffer[1], 0x80000000);

    memset(Buffer, 0xcc, BufferSize);
    RtlSetBits(&BitMapHeader, 3, 6);
    RtlSetBits(&BitMapHeader, 11, 5);
    RtlSetBits(&BitMapHeader, 21, 7);
    RtlSetBits(&BitMapHeader, 37, 4);
    ok_hex(Buffer[0], 0xcfecfdfc);
    ok_hex(Buffer[1], 0xcccccdec);
    FreeGuarded(Buffer);
}
