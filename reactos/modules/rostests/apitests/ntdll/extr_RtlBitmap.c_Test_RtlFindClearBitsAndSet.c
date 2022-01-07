
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int RTL_BITMAP ;


 int* AllocateGuarded (int) ;
 int FreeGuarded (int*) ;
 int RtlFindClearBitsAndSet (int *,int,int) ;
 int RtlInitializeBitMap (int *,int*,int) ;
 int ok_hex (int,int) ;
 int ok_int (int ,int) ;

void
Test_RtlFindClearBitsAndSet(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;

    Buffer = AllocateGuarded(2 * sizeof(*Buffer));
    Buffer[0] = 0x060F874D;
    Buffer[1] = 0x3F303F30;

    RtlInitializeBitMap(&BitMapHeader, Buffer, 0);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 0, 0), 0);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 0, 3), 0);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 1, 0), -1);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 1, 1), -1);
    ok_hex(Buffer[0], 0x060F874D);

    Buffer[0] = 0x060F874D;
    RtlInitializeBitMap(&BitMapHeader, Buffer, 8);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 1, 0), 1);
    ok_hex(Buffer[0], 0x60f874f);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 1, 1), 4);
    ok_hex(Buffer[0], 0x60f875f);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 1, 2), 5);
    ok_hex(Buffer[0], 0x60f877f);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 2, 0), -1);
    ok_hex(Buffer[0], 0x60f877f);

    Buffer[0] = 0x060F874D;
    RtlInitializeBitMap(&BitMapHeader, Buffer, 32);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 4, 0), 11);
    ok_hex(Buffer[0], 0x60fff4d);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 5, 0), 20);
    ok_hex(Buffer[0], 0x7ffff4d);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 4, 11), 27);
    ok_hex(Buffer[0], 0x7fffff4d);

    Buffer[0] = 0x060F874D;
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 4, 12), 20);
    ok_hex(Buffer[0], 0x6ff874d);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 2, 11), 11);
    ok_hex(Buffer[0], 0x6ff9f4d);
    ok_int(RtlFindClearBitsAndSet(&BitMapHeader, 2, 12), 13);
    ok_hex(Buffer[0], 0x6ffff4d);
    FreeGuarded(Buffer);
}
