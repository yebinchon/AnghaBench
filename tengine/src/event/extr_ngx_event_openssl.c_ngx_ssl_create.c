
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_3__ {int * ctx; scalar_t__ async_enable; int buffer_size; int log; } ;
typedef TYPE_1__ ngx_ssl_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 int NGX_SSL_BUFSIZE ;
 int NGX_SSL_SSLv2 ;
 int NGX_SSL_SSLv3 ;
 int NGX_SSL_TLSv1 ;
 int NGX_SSL_TLSv1_1 ;
 int NGX_SSL_TLSv1_2 ;
 int NGX_SSL_TLSv1_3 ;
 int SSL_CTX_clear_options (int *,int) ;
 int * SSL_CTX_new (int ) ;
 scalar_t__ SSL_CTX_set_ex_data (int *,int ,void*) ;
 int SSL_CTX_set_info_callback (int *,int ) ;
 int SSL_CTX_set_max_proto_version (int *,int ) ;
 int SSL_CTX_set_min_proto_version (int *,int ) ;
 int SSL_CTX_set_mode (int *,int ) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_CTX_set_read_ahead (int *,int) ;
 int SSL_MODE_ASYNC ;
 int SSL_MODE_NO_AUTO_CHAIN ;
 int SSL_MODE_RELEASE_BUFFERS ;
 int SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS ;
 int SSL_OP_MICROSOFT_BIG_SSLV3_BUFFER ;
 int SSL_OP_MICROSOFT_SESS_ID_BUG ;
 int SSL_OP_MSIE_SSLV2_RSA_PADDING ;
 int SSL_OP_NETSCAPE_CHALLENGE_BUG ;
 int SSL_OP_NO_ANTI_REPLAY ;
 int SSL_OP_NO_CLIENT_RENEGOTIATION ;
 int SSL_OP_NO_COMPRESSION ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_OP_NO_TLSv1 ;
 int SSL_OP_NO_TLSv1_1 ;
 int SSL_OP_NO_TLSv1_2 ;
 int SSL_OP_NO_TLSv1_3 ;
 int SSL_OP_SINGLE_DH_USE ;
 int SSL_OP_SSLEAY_080_CLIENT_DH_BUG ;
 int SSL_OP_SSLREF2_REUSE_CERT_TYPE_BUG ;
 int SSL_OP_TLS_BLOCK_PADDING_BUG ;
 int SSL_OP_TLS_D5_BUG ;
 int SSLv23_method () ;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int ngx_ssl_certificate_index ;
 int ngx_ssl_error (int ,int ,int ,char*) ;
 int ngx_ssl_info_callback ;
 int ngx_ssl_server_conf_index ;

ngx_int_t
ngx_ssl_create(ngx_ssl_t *ssl, ngx_uint_t protocols, void *data)
{
    ssl->ctx = SSL_CTX_new(SSLv23_method());

    if (ssl->ctx == ((void*)0)) {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0, "SSL_CTX_new() failed");
        return NGX_ERROR;
    }

    if (SSL_CTX_set_ex_data(ssl->ctx, ngx_ssl_server_conf_index, data) == 0) {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0,
                      "SSL_CTX_set_ex_data() failed");
        return NGX_ERROR;
    }

    if (SSL_CTX_set_ex_data(ssl->ctx, ngx_ssl_certificate_index, ((void*)0)) == 0) {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0,
                      "SSL_CTX_set_ex_data() failed");
        return NGX_ERROR;
    }

    ssl->buffer_size = NGX_SSL_BUFSIZE;
    SSL_CTX_set_options(ssl->ctx, SSL_OP_SINGLE_DH_USE);







    if (!(protocols & NGX_SSL_SSLv2)) {
        SSL_CTX_set_options(ssl->ctx, SSL_OP_NO_SSLv2);
    }
    if (!(protocols & NGX_SSL_SSLv3)) {
        SSL_CTX_set_options(ssl->ctx, SSL_OP_NO_SSLv3);
    }
    if (!(protocols & NGX_SSL_TLSv1)) {
        SSL_CTX_set_options(ssl->ctx, SSL_OP_NO_TLSv1);
    }
    SSL_CTX_set_read_ahead(ssl->ctx, 1);

    SSL_CTX_set_info_callback(ssl->ctx, ngx_ssl_info_callback);

    return NGX_OK;
}
