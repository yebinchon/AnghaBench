
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_base32hexchar () ;
 int test_base32hexmem () ;
 int test_base64char () ;
 int test_base64mem () ;
 int test_decchar () ;
 int test_hexchar () ;
 int test_hexdump () ;
 int test_octchar () ;
 int test_unbase32hexchar () ;
 int test_unbase32hexmem () ;
 int test_unbase64char () ;
 int test_unbase64mem () ;
 int test_undecchar () ;
 int test_unhexchar () ;
 int test_unhexmem () ;
 int test_unoctchar () ;

int main(int argc, char *argv[]) {
        test_hexchar();
        test_unhexchar();
        test_base32hexchar();
        test_unbase32hexchar();
        test_base64char();
        test_unbase64char();
        test_octchar();
        test_unoctchar();
        test_decchar();
        test_undecchar();
        test_unhexmem();
        test_base32hexmem();
        test_unbase32hexmem();
        test_base64mem();
        test_unbase64mem();
        test_hexdump();

        return 0;
}
