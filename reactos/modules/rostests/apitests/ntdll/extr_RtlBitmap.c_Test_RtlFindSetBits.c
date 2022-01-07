
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int RTL_BITMAP ;


 int* AllocateGuarded (int) ;
 int FreeGuarded (int*) ;
 int RtlFindSetBits (int *,int,int) ;
 int RtlInitializeBitMap (int *,int*,int) ;
 int ok_int (int ,int) ;

void
Test_RtlFindSetBits(void)
{
    RTL_BITMAP BitMapHeader;
    ULONG *Buffer;

    Buffer = AllocateGuarded(2 * sizeof(*Buffer));
    Buffer[0] = 0xF9F078B2;
    Buffer[1] = 0x3F303F30;

    RtlInitializeBitMap(&BitMapHeader, Buffer, 0);
    ok_int(RtlFindSetBits(&BitMapHeader, 0, 0), 0);
    ok_int(RtlFindSetBits(&BitMapHeader, 0, 3), 0);
    ok_int(RtlFindSetBits(&BitMapHeader, 1, 0), -1);
    ok_int(RtlFindSetBits(&BitMapHeader, 1, 1), -1);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 8);
    ok_int(RtlFindSetBits(&BitMapHeader, 0, 3), 0);
    ok_int(RtlFindSetBits(&BitMapHeader, 1, 0), 1);
    ok_int(RtlFindSetBits(&BitMapHeader, 1, 1), 1);
    ok_int(RtlFindSetBits(&BitMapHeader, 1, 2), 4);

    ok_int(RtlFindSetBits(&BitMapHeader, 2, 0), 4);
    ok_int(RtlFindSetBits(&BitMapHeader, 3, 0), -1);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 32);
    ok_int(RtlFindSetBits(&BitMapHeader, 0, 3), 0);
    ok_int(RtlFindSetBits(&BitMapHeader, 0, 21), 16);
    ok_int(RtlFindSetBits(&BitMapHeader, 0, 12), 8);
    ok_int(RtlFindSetBits(&BitMapHeader, 0, 31), 24);
    ok_int(RtlFindSetBits(&BitMapHeader, 0, 32), 0);
    ok_int(RtlFindSetBits(&BitMapHeader, 0, 39), 0);
    ok_int(RtlFindSetBits(&BitMapHeader, 4, 0), 11);
    ok_int(RtlFindSetBits(&BitMapHeader, 5, 0), 20);
    ok_int(RtlFindSetBits(&BitMapHeader, 4, 11), 11);
    ok_int(RtlFindSetBits(&BitMapHeader, 4, 12), 20);
    ok_int(RtlFindSetBits(&BitMapHeader, 2, 11), 11);
    ok_int(RtlFindSetBits(&BitMapHeader, 1, 32), 1);
    ok_int(RtlFindSetBits(&BitMapHeader, 4, 32), 11);
    ok_int(RtlFindSetBits(&BitMapHeader, 5, 32), 20);

    RtlInitializeBitMap(&BitMapHeader, Buffer, 64);
    ok_int(RtlFindSetBits(&BitMapHeader, 5, 64), 20);
    ok_int(RtlFindSetBits(&BitMapHeader, 6, 57), 40);
    ok_int(RtlFindSetBits(&BitMapHeader, 7, 0), -1);
    ok_int(RtlFindSetBits(&BitMapHeader, 1, 62), 1);
    FreeGuarded(Buffer);
}
