
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* memcmpfunc ) (unsigned char*,unsigned char*) ;


 int memset (unsigned char*,int,int) ;
 int ok (int,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_memcmpfunc(memcmpfunc fn)
{
    unsigned char arg1[0x20], arg2[0x20];
    int r;

    if (!fn)
    {
        win_skip("function is not available\n");
        return;
    }

    memset(arg1, 0, sizeof arg1);
    memset(arg2, 0, sizeof arg2);
    arg1[0x10] = 1;

    r = fn(arg1, arg2);
    ok( r == 1, "wrong error code\n");

    memset(arg1, 1, sizeof arg1);
    memset(arg2, 1, sizeof arg2);
    arg1[0x10] = 0;

    r = fn(arg1, arg2);
    ok( r == 1, "wrong error code\n");

    memset(arg1, 0, sizeof arg1);
    memset(arg2, 1, sizeof arg2);

    r = fn(arg1, arg2);
    ok( r == 0, "wrong error code\n");

    memset(arg1, 1, sizeof arg1);
    memset(arg2, 0, sizeof arg2);

    r = fn(arg1, arg2);
    ok( r == 0, "wrong error code\n");
}
