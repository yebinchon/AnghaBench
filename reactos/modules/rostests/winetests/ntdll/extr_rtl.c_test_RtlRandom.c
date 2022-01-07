
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;
typedef scalar_t__ ULONG ;


 int ok (int,char*,int,scalar_t__,...) ;
 scalar_t__ pRtlRandom (scalar_t__*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlRandom(void)
{
    int i, j;
    ULONG seed;
    ULONG res[512];

    if (!pRtlRandom)
    {
        win_skip("RtlRandom is not available\n");
        return;
    }

    seed = 0;
    for (i = 0; i < sizeof(res) / sizeof(res[0]); i++)
    {
        res[i] = pRtlRandom(&seed);
        ok(seed != res[i], "%i: seed is same as res %x\n", i, seed);
        for (j = 0; j < i; j++)
            ok(res[i] != res[j], "res[%i] (%x) is same as res[%i] (%x)\n", j, res[j], i, res[i]);
    }
}
