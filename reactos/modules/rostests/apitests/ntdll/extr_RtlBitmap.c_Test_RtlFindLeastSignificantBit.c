
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RtlFindLeastSignificantBit (int) ;
 int ok_int (int ,int) ;

void
Test_RtlFindLeastSignificantBit(void)
{
    ok_int(RtlFindLeastSignificantBit(0), -1);

    ok_int(RtlFindLeastSignificantBit(0x0000000000000001ULL), 0);
    ok_int(RtlFindLeastSignificantBit(0x0000000000000002ULL), 1);
    ok_int(RtlFindLeastSignificantBit(0x1000000000000000ULL), 60);
    ok_int(RtlFindLeastSignificantBit(0x8000000000000000ULL), 63);
    ok_int(RtlFindLeastSignificantBit(0x8000000000000000ULL), 63);
    ok_int(RtlFindLeastSignificantBit(0xFFFFFFFFFFFFFFFFULL), 0);
    ok_int(RtlFindLeastSignificantBit(0x0000000070000000ULL), 28);
}
