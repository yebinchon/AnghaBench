
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int redisContext ;
struct TYPE_2__ {scalar_t__ sni; scalar_t__ key; scalar_t__ cert; scalar_t__ cacertdir; scalar_t__ cacert; } ;
typedef int SSL_CTX ;
typedef int SSL ;


 int REDIS_ERR ;
 int REDIS_OK ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_load_verify_locations (int *,scalar_t__,scalar_t__) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_default_verify_paths (int *) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_CTX_set_verify (int *,int ,int *) ;
 int SSL_CTX_use_PrivateKey_file (int *,scalar_t__,int ) ;
 int SSL_CTX_use_certificate_chain_file (int *,scalar_t__) ;
 int SSL_FILETYPE_PEM ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_VERIFY_PEER ;
 int SSL_free (int *) ;
 int * SSL_new (int *) ;
 int SSL_set_tlsext_host_name (int *,scalar_t__) ;
 int SSLv23_client_method () ;
 TYPE_1__ config ;
 int redisInitiateSSL (int *,int *) ;

__attribute__((used)) static int cliSecureConnection(redisContext *c, const char **err) {
    (void) c;
    (void) err;
    return REDIS_OK;

}
