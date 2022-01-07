
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int SSL_CTX ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int * SSL_CTX_get_cert_store (int *) ;
 int load_certs_from_db (int *) ;

__attribute__((used)) static CURLcode
ssl_callback (CURL *curl, void *ssl_ctx, void *userptr)
{
    SSL_CTX *ctx = ssl_ctx;
    X509_STORE *store;

    store = SSL_CTX_get_cert_store(ctx);





    load_certs_from_db (store);

    return CURLE_OK;
}
