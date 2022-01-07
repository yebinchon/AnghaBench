
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* md4hashfunc ) (int ,unsigned char*,unsigned char*) ;


 int STATUS_SUCCESS ;
 int memcmp (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_md4hashfunc(md4hashfunc func)
{
    unsigned char expected[0x10] = {
        0x48, 0x7c, 0x3f, 0x5e, 0x2b, 0x0d, 0x6a, 0x79,
        0x32, 0x4e, 0xcd, 0xbe, 0x9c, 0x15, 0x16, 0x6f };
    unsigned char in[0x10], output[0x10];
    int r;

    memset(in, 0, sizeof in);
    memset(output, 0, sizeof output);
    r = func(0, in, output);
    ok( r == STATUS_SUCCESS, "wrong error code\n");
    ok( !memcmp(expected, output, sizeof output), "output wrong\n");
}
