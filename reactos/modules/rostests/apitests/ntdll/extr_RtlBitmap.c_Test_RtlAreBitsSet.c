
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int RTL_BITMAP ;


 int* AllocateGuarded (int) ;
 int FALSE ;
 int FreeGuarded (int*) ;
 int RtlAreBitsSet (int *,int,int) ;
 int RtlInitializeBitMap (int *,int*,int) ;
 int TRUE ;
 int ok_hex (int ,int ) ;

void
Test_RtlAreBitsSet(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;

    Buffer = AllocateGuarded(2 * sizeof(*Buffer));
    RtlInitializeBitMap(&BitMapHeader, Buffer, 19);
    Buffer[0] = 0xff00ff00;
    Buffer[1] = 0x3F303F30;

    ok_hex(RtlAreBitsSet(&BitMapHeader, 0, 8), FALSE);
    ok_hex(RtlAreBitsSet(&BitMapHeader, 8, 8), TRUE);
    ok_hex(RtlAreBitsSet(&BitMapHeader, 7, 8), FALSE);
    ok_hex(RtlAreBitsSet(&BitMapHeader, 8, 9), FALSE);
    ok_hex(RtlAreBitsSet(&BitMapHeader, 24, 1), FALSE);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 31);
    ok_hex(RtlAreBitsSet(&BitMapHeader, 24, 1), TRUE);
    ok_hex(RtlAreBitsSet(&BitMapHeader, 24, 7), TRUE);
    ok_hex(RtlAreBitsSet(&BitMapHeader, 24, 8), FALSE);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 64);
    ok_hex(RtlAreBitsSet(&BitMapHeader, 60, 4), FALSE);
    FreeGuarded(Buffer);
}
