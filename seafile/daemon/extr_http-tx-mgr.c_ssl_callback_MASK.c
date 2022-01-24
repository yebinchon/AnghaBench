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
typedef  int /*<<< orphan*/  X509_STORE ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static CURLcode
FUNC2 (CURL *curl, void *ssl_ctx, void *userptr)
{
    SSL_CTX *ctx = ssl_ctx;
    X509_STORE *store;

    store = FUNC0(ctx);

    /* Add all certs stored in db as trusted CA certs.
     * This workaround has one limitation though. The self-signed certs cannot
     * contain chain. It must be the CA itself.
     */
    FUNC1 (store);

    return CURLE_OK;
}