
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* descrypt ) (int ,unsigned char*,unsigned char*) ;


 int STATUS_SUCCESS ;
 int des_ciphertext32 ;
 int des_plaintext ;
 int memcmp (unsigned char*,int ,int) ;
 int memcpy (unsigned char*,char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ok (int,char*,int) ;
 int win_skip (char*,int) ;

__attribute__((used)) static void test_SystemFunction_dec32(descrypt func, int num)
{
    unsigned char key[4], output[0x11];
    int r;

    if (!func)
    {
        win_skip("SystemFunction%03d is not available\n", num);
        return;
    }

    memset(output, 0, sizeof output);


    memcpy(key, "foo", 4);

    r = func(des_ciphertext32, key, output);
    ok( r == STATUS_SUCCESS, "wrong error code (%d)\n", num);

    ok( !memcmp( output, des_plaintext, sizeof des_plaintext), "plaintext wrong (%d)\n", num);
}
