#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_ssl_conn_t ;
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int /*<<< orphan*/  RSA_F4 ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

RSA *
FUNC1(ngx_ssl_conn_t *ssl_conn, int is_export,
    int key_length)
{
    static RSA  *key;

    if (key_length != 512) {
        return NULL;
    }

#if (OPENSSL_VERSION_NUMBER < 0x10100003L && !defined OPENSSL_NO_DEPRECATED)

    if (key == NULL) {
        key = FUNC0(512, RSA_F4, NULL, NULL);
    }

#endif

    return key;
}