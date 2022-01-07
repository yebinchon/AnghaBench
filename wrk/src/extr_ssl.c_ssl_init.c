
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int OpenSSL_add_all_algorithms () ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_mode (int *,int ) ;
 int SSL_CTX_set_session_cache_mode (int *,int ) ;
 int SSL_CTX_set_verify (int *,int ,int *) ;
 int SSL_CTX_set_verify_depth (int *,int ) ;
 int SSL_MODE_AUTO_RETRY ;
 int SSL_SESS_CACHE_CLIENT ;
 int SSL_VERIFY_NONE ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int SSLv23_client_method () ;

SSL_CTX *ssl_init() {
    SSL_CTX *ctx = ((void*)0);

    SSL_load_error_strings();
    SSL_library_init();
    OpenSSL_add_all_algorithms();

    if ((ctx = SSL_CTX_new(SSLv23_client_method()))) {
        SSL_CTX_set_verify(ctx, SSL_VERIFY_NONE, ((void*)0));
        SSL_CTX_set_verify_depth(ctx, 0);
        SSL_CTX_set_mode(ctx, SSL_MODE_AUTO_RETRY);
        SSL_CTX_set_session_cache_mode(ctx, SSL_SESS_CACHE_CLIENT);
    }

    return ctx;
}
