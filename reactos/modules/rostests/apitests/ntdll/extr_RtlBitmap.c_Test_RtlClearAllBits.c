
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int RTL_BITMAP ;


 int* AllocateGuarded (int) ;
 int FreeGuarded (int*) ;
 int RtlClearAllBits (int *) ;
 int RtlInitializeBitMap (int *,int*,int) ;
 int memset (int*,int,int) ;
 int ok_hex (int,int) ;

void
Test_RtlClearAllBits(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;
    ULONG BufferSize = 2 * sizeof(*Buffer);

    Buffer = AllocateGuarded(BufferSize);
    RtlInitializeBitMap(&BitMapHeader, Buffer, 19);
    memset(Buffer, 0xcc, BufferSize);
    RtlClearAllBits(&BitMapHeader);
    ok_hex(Buffer[0], 0x00000000);
    ok_hex(Buffer[1], 0xcccccccc);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 0);
    memset(Buffer, 0xcc, BufferSize);
    RtlClearAllBits(&BitMapHeader);
    ok_hex(Buffer[0], 0xcccccccc);
    ok_hex(Buffer[1], 0xcccccccc);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 64);
    memset(Buffer, 0xcc, BufferSize);
    RtlClearAllBits(&BitMapHeader);
    ok_hex(Buffer[0], 0x00000000);
    ok_hex(Buffer[1], 0x00000000);
    FreeGuarded(Buffer);
}
