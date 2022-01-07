
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_load_BIO_strings () ;
 int OpenSSL_add_all_algorithms () ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int TLS_IS_INIT ;

void __attribute__((constructor)) ltls_init(void) {

    SSL_library_init();
    SSL_load_error_strings();
    ERR_load_BIO_strings();
    OpenSSL_add_all_algorithms();
    TLS_IS_INIT = 1;

}
