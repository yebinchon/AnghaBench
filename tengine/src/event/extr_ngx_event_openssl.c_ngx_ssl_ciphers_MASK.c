#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_7__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ ngx_ssl_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_OP_CIPHER_SERVER_PREFERENCE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  ngx_ssl_rsa512_key_callback ; 

ngx_int_t
FUNC4(ngx_conf_t *cf, ngx_ssl_t *ssl, ngx_str_t *ciphers,
    ngx_uint_t prefer_server_ciphers)
{
    if (FUNC0(ssl->ctx, (char *) ciphers->data) == 0) {
        FUNC3(NGX_LOG_EMERG, ssl->log, 0,
                      "SSL_CTX_set_cipher_list(\"%V\") failed",
                      ciphers);
        return NGX_ERROR;
    }

    if (prefer_server_ciphers) {
        FUNC1(ssl->ctx, SSL_OP_CIPHER_SERVER_PREFERENCE);
    }

#if (OPENSSL_VERSION_NUMBER < 0x10100001L && !defined LIBRESSL_VERSION_NUMBER)
    /* a temporary 512-bit RSA key is required for export versions of MSIE */
    FUNC2(ssl->ctx, ngx_ssl_rsa512_key_callback);
#endif

    return NGX_OK;
}