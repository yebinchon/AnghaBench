
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATUS_SUCCESS ;
 int memcmp (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ok (int,char*) ;
 int pSystemFunction002 (unsigned char*,unsigned char*,unsigned char*) ;

__attribute__((used)) static void test_SystemFunction002(void)
{

    unsigned char key[8] = { 0xff, 0x37, 0x50, 0xbc, 0xc2, 0xb2, 0x24, 0 };
    unsigned char expected[8] = { 0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef };
    unsigned char data[8] = { 0xc3, 0x37, 0xcd, 0x5c, 0xbd, 0x44, 0xfc, 0x97 };
    unsigned char output[8];
    int r;

    memset(output, 0, sizeof output);
    r = pSystemFunction002(data, key, output);
    ok(r == STATUS_SUCCESS, "function failed\n");
    ok(!memcmp(output, expected, sizeof expected), "response wrong\n");
}
