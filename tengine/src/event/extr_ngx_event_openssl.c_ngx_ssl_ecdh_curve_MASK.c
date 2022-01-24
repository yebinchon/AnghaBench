#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_6__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ ngx_ssl_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_OK ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_OP_SINGLE_ECDH_USE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

ngx_int_t
FUNC9(ngx_conf_t *cf, ngx_ssl_t *ssl, ngx_str_t *name)
{
#ifndef OPENSSL_NO_ECDH

    /*
     * Elliptic-Curve Diffie-Hellman parameters are either "named curves"
     * from RFC 4492 section 5.1.1, or explicitly described curves over
     * binary fields.  OpenSSL only supports the "named curves", which provide
     * maximum interoperability.
     */

#if (defined SSL_CTX_set1_curves_list || defined SSL_CTRL_SET_CURVES_LIST)

    /*
     * OpenSSL 1.0.2+ allows configuring a curve list instead of a single
     * curve previously supported.  By default an internal list is used,
     * with prime256v1 being preferred by server in OpenSSL 1.0.2b+
     * and X25519 in OpenSSL 1.1.0+.
     *
     * By default a curve preferred by the client will be used for
     * key exchange.  The SSL_OP_CIPHER_SERVER_PREFERENCE option can
     * be used to prefer server curves instead, similar to what it
     * does for ciphers.
     */

    SSL_CTX_set_options(ssl->ctx, SSL_OP_SINGLE_ECDH_USE);

#if SSL_CTRL_SET_ECDH_AUTO
    /* not needed in OpenSSL 1.1.0+ */
    SSL_CTX_set_ecdh_auto(ssl->ctx, 1);
#endif

    if (ngx_strcmp(name->data, "auto") == 0) {
        return NGX_OK;
    }

    if (SSL_CTX_set1_curves_list(ssl->ctx, (char *) name->data) == 0) {
        ngx_ssl_error(NGX_LOG_EMERG, ssl->log, 0,
                      "SSL_CTX_set1_curves_list(\"%s\") failed", name->data);
        return NGX_ERROR;
    }

#else

    int      nid;
    char    *curve;
    EC_KEY  *ecdh;

    if (FUNC8(name->data, "auto") == 0) {
        curve = "prime256v1";

    } else {
        curve = (char *) name->data;
    }

    nid = FUNC2(curve);
    if (nid == 0) {
        FUNC7(NGX_LOG_EMERG, ssl->log, 0,
                      "OBJ_sn2nid(\"%s\") failed: unknown curve", curve);
        return NGX_ERROR;
    }

    ecdh = FUNC1(nid);
    if (ecdh == NULL) {
        FUNC7(NGX_LOG_EMERG, ssl->log, 0,
                      "EC_KEY_new_by_curve_name(\"%s\") failed", curve);
        return NGX_ERROR;
    }

    FUNC5(ssl->ctx, SSL_OP_SINGLE_ECDH_USE);

    FUNC6(ssl->ctx, ecdh);

    FUNC0(ecdh);
#endif
#endif

    return NGX_OK;
}