
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int ok (int,char*,int,int,int) ;
 int pSwapPlong (int*,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SwapPlong(void)
{
    ULONG longs[3];

    if (!pSwapPlong)
    {
        win_skip("SwapPlong is not available\n");
        return;
    }

    longs[0] = 0xffff0001;
    longs[1] = 0x1000ffff;
    longs[2] = 0x20000001;
    pSwapPlong(longs, 2);
    ok((longs[0] == 0x0100ffff && longs[1] == 0xffff0010 && longs[2] == 0x20000001),
       "Expected {0x0100ffff,0xffff0010,0x20000001}, got {0x%08x,0x%08x,0x%08x}\n",
       longs[0], longs[1], longs[2]);
}
