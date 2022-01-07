
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* descrypt ) (int *,int *,unsigned char*) ;


 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int * des_ciphertext ;
 int * des_key ;
 int des_plaintext ;
 int memcmp (int ,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ok (int,char*,...) ;
 int win_skip (char*,int) ;

__attribute__((used)) static void test_SystemFunction_decrypt(descrypt func, int num)
{
    unsigned char output[0x11];
    int r;

    if (!func)
    {
        win_skip("SystemFunction%03d is not available\n", num);
        return;
    }

    r = func(((void*)0), ((void*)0), ((void*)0));
    ok( r == STATUS_UNSUCCESSFUL, "wrong error code\n");

    memset(output, 0, sizeof output);

    r = func(des_ciphertext, des_key, output);
    ok( r == STATUS_SUCCESS, "wrong error code\n");
    ok( !memcmp(des_plaintext, output, sizeof des_plaintext), "plaintext wrong (%d)\n", num);
}
