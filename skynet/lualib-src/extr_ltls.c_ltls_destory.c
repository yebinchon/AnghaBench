
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_modules_unload (int) ;
 int CRYPTO_cleanup_all_ex_data () ;
 int ENGINE_cleanup () ;
 int ERR_free_strings () ;
 int EVP_cleanup () ;
 int SSL_COMP_get_compression_methods () ;
 scalar_t__ TLS_IS_INIT ;
 int sk_SSL_COMP_free (int ) ;

void __attribute__((destructor)) ltls_destory(void) {
    if(TLS_IS_INIT) {
        ENGINE_cleanup();
        CONF_modules_unload(1);
        ERR_free_strings();
        EVP_cleanup();
        sk_SSL_COMP_free(SSL_COMP_get_compression_methods());
        CRYPTO_cleanup_all_ex_data();
    }
}
