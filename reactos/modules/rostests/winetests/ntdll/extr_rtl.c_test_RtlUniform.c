
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGLONG ;
typedef int ULONG ;


 int MAXLONG ;
 int ok (int,char*,int,int,...) ;
 int pRtlUniform (int*) ;
 int skip (char*) ;
 int win_skip (char*) ;
 int wine_dbgstr_longlong (int) ;

__attribute__((used)) static void test_RtlUniform(void)
{
    ULONGLONG num;
    ULONG seed;
    ULONG seed_bak;
    ULONG expected;
    ULONG result;

    if (!pRtlUniform)
    {
        win_skip("RtlUniform is not available\n");
        return;
    }
    seed = 0;
    expected = 0x7fffffc3;
    result = pRtlUniform(&seed);
    ok(result == expected,
        "RtlUniform(&seed (seed == 0)) returns %x, expected %x\n",
        result, expected);
    seed = 1;
    expected = seed * 0xffffffed + 0x7fffffc3 + 1;
    result = pRtlUniform(&seed);
    ok(result == expected,
        "RtlUniform(&seed (seed == 1)) returns %x, expected %x\n",
        result, expected);



    seed = 2;
    expected = seed * 0xffffffed + 0x7fffffc3;
    result = pRtlUniform(&seed);






    if (result == 0x7fffff9f) {
        skip("Most likely running on Windows Vista which uses a different algorithm\n");
        return;
    }

    ok(result == expected,
        "RtlUniform(&seed (seed == 2)) returns %x, expected %x\n",
        result, expected);




    seed = 3;
    expected = seed * 0xffffffed + 0x7fffffc3 + (seed & 1);
    result = pRtlUniform(&seed);
    ok(result == expected,
        "RtlUniform(&seed (seed == 3)) returns %x, expected %x\n",
        result, expected);

    seed = 0x6bca1aa;
    expected = seed * 0xffffffed + 0x7fffffc3;
    result = pRtlUniform(&seed);
    ok(result == expected,
        "RtlUniform(&seed (seed == 0x6bca1aa)) returns %x, expected %x\n",
        result, expected);

    seed = 0x6bca1ab;
    expected = seed * 0xffffffed + 0x7fffffc3 + 1;
    result = pRtlUniform(&seed);
    ok(result == expected,
        "RtlUniform(&seed (seed == 0x6bca1ab)) returns %x, expected %x\n",
        result, expected);



    seed = 0x6bca1ac;
    expected = seed * 0xffffffed + 0x7fffffc3 + 2;
    result = pRtlUniform(&seed);
    ok(result == expected,
        "RtlUniform(&seed (seed == 0x6bca1ac)) returns %x, expected %x\n",
        result, expected);






    seed = 0x6bca1ad;
    expected = (seed * 0xffffffed + 0x7fffffc3) & MAXLONG;
    result = pRtlUniform(&seed);
    ok(result == expected,
        "RtlUniform(&seed (seed == 0x6bca1ad)) returns %x, expected %x\n",
        result, expected);

    seed = 0x6bca1ae;
    expected = (seed * 0xffffffed + 0x7fffffc3 + 1) & MAXLONG;
    result = pRtlUniform(&seed);
    ok(result == expected,
        "RtlUniform(&seed (seed == 0x6bca1ae)) returns %x, expected %x\n",
        result, expected);
    seed = 0;
    for (num = 0; num <= 100000; num++) {

 expected = seed * 0xffffffed + 0x7fffffc3;
 if (seed < 0x6bca1ac) {
     expected = expected + (seed & 1);
 } else if (seed == 0x6bca1ac) {
     expected = (expected + 2) & MAXLONG;
 } else if (seed < 0xd79435c) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0x1435e50b) {
     expected = expected + (seed & 1);
 } else if (seed < 0x1af286ba) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0x21af2869) {
     expected = expected + (seed & 1);
 } else if (seed < 0x286bca18) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0x2f286bc7) {
     expected = expected + (seed & 1);
 } else if (seed < 0x35e50d77) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0x3ca1af26) {
     expected = expected + (seed & 1);
 } else if (seed < 0x435e50d5) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0x4a1af284) {
     expected = expected + (seed & 1);
 } else if (seed < 0x50d79433) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0x579435e2) {
     expected = expected + (seed & 1);
 } else if (seed < 0x5e50d792) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0x650d7941) {
     expected = expected + (seed & 1);
 } else if (seed < 0x6bca1af0) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0x7286bc9f) {
     expected = expected + (seed & 1);
 } else if (seed < 0x79435e4e) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0x7ffffffd) {
     expected = expected + (seed & 1);
 } else if (seed < 0x86bca1ac) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed == 0x86bca1ac) {
     expected = (expected + 1) & MAXLONG;
 } else if (seed < 0x8d79435c) {
     expected = expected + (seed & 1);
 } else if (seed < 0x9435e50b) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0x9af286ba) {
     expected = expected + (seed & 1);
 } else if (seed < 0xa1af2869) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0xa86bca18) {
     expected = expected + (seed & 1);
 } else if (seed < 0xaf286bc7) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed == 0xaf286bc7) {
     expected = (expected + 2) & MAXLONG;
 } else if (seed < 0xb5e50d77) {
     expected = expected + (seed & 1);
 } else if (seed < 0xbca1af26) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0xc35e50d5) {
     expected = expected + (seed & 1);
 } else if (seed < 0xca1af284) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0xd0d79433) {
     expected = expected + (seed & 1);
 } else if (seed < 0xd79435e2) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0xde50d792) {
     expected = expected + (seed & 1);
 } else if (seed < 0xe50d7941) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0xebca1af0) {
     expected = expected + (seed & 1);
 } else if (seed < 0xf286bc9f) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else if (seed < 0xf9435e4e) {
     expected = expected + (seed & 1);
 } else if (seed < 0xfffffffd) {
     expected = (expected + (~seed & 1)) & MAXLONG;
 } else {
     expected = expected + (seed & 1);
 }
        seed_bak = seed;
        result = pRtlUniform(&seed);
        ok(result == expected,
                "test: 0x%s RtlUniform(&seed (seed == %x)) returns %x, expected %x\n",
                wine_dbgstr_longlong(num), seed_bak, result, expected);
        ok(seed == expected,
                "test: 0x%s RtlUniform(&seed (seed == %x)) sets seed to %x, expected %x\n",
                wine_dbgstr_longlong(num), seed_bak, result, expected);
    }
    seed = 0;
    for (num = 0; num <= 100000; num++) {
 expected = (seed * 0x7fffffed + 0x7fffffc3) % 0x7fffffff;
        seed_bak = seed;
        result = pRtlUniform(&seed);
        ok(result == expected,
                "test: 0x%s RtlUniform(&seed (seed == %x)) returns %x, expected %x\n",
                wine_dbgstr_longlong(num), seed_bak, result, expected);
        ok(seed == expected,
                "test: 0x%s RtlUniform(&seed (seed == %x)) sets seed to %x, expected %x\n",
                wine_dbgstr_longlong(num), seed_bak, result, expected);
    }





}
