
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int RTL_BITMAP ;


 int* AllocateGuarded (int) ;
 int FreeGuarded (int*) ;
 int RtlClearBits (int *,int,int) ;
 int RtlInitializeBitMap (int *,int*,int) ;
 int memset (int*,int,int) ;
 int ok_hex (int,int) ;

void
Test_RtlClearBits(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;
    ULONG BufferSize = 2 * sizeof(*Buffer);

    Buffer = AllocateGuarded(BufferSize);
    RtlInitializeBitMap(&BitMapHeader, Buffer, 19);

    memset(Buffer, 0xff, BufferSize);
    RtlClearBits(&BitMapHeader, 0, 0);
    ok_hex(Buffer[0], 0xffffffff);
    ok_hex(Buffer[1], 0xffffffff);

    memset(Buffer, 0xff, BufferSize);
    RtlClearBits(&BitMapHeader, 0, 1);
    ok_hex(Buffer[0], 0xfffffffe);
    ok_hex(Buffer[1], 0xffffffff);

    memset(Buffer, 0xff, BufferSize);
    RtlClearBits(&BitMapHeader, 21, 1);
    ok_hex(Buffer[0], 0xffdfffff);
    ok_hex(Buffer[1], 0xffffffff);

    memset(Buffer, 0xff, BufferSize);
    RtlClearBits(&BitMapHeader, 7, 9);
    ok_hex(Buffer[0], 0xffff007f);
    ok_hex(Buffer[1], 0xffffffff);

    memset(Buffer, 0xff, BufferSize);
    RtlClearBits(&BitMapHeader, 13, 22);
    ok_hex(Buffer[0], 0x00001fff);
    ok_hex(Buffer[1], 0xfffffff8);

    memset(Buffer, 0xff, BufferSize);
    RtlClearBits(&BitMapHeader, 63, 1);
    ok_hex(Buffer[0], 0xffffffff);
    ok_hex(Buffer[1], 0x7fffffff);

    memset(Buffer, 0xcc, BufferSize);
    RtlClearBits(&BitMapHeader, 3, 6);
    RtlClearBits(&BitMapHeader, 11, 5);
    RtlClearBits(&BitMapHeader, 21, 7);
    RtlClearBits(&BitMapHeader, 37, 4);
    ok_hex(Buffer[0], 0xc00c0404);
    ok_hex(Buffer[1], 0xcccccc0c);
    FreeGuarded(Buffer);
}
