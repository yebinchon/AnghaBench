
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int test_is_fido_security_token_desc__fido () ;
 int test_is_fido_security_token_desc__invalid () ;
 int test_is_fido_security_token_desc__non_fido () ;

int main(int argc, char *argv[]) {
        test_is_fido_security_token_desc__fido();
        test_is_fido_security_token_desc__non_fido();
        test_is_fido_security_token_desc__invalid();

        return EXIT_SUCCESS;
}
