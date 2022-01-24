#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ len; scalar_t__ data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_9__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ ngx_ssl_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_10__ {int /*<<< orphan*/  cycle; } ;
typedef  TYPE_3__ ngx_conf_t ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

ngx_int_t
FUNC7(ngx_conf_t *cf, ngx_ssl_t *ssl, ngx_str_t *file)
{
    DH   *dh;
    BIO  *bio;

    if (file->len == 0) {
        return NGX_OK;
    }

    if (FUNC5(cf->cycle, file, 1) != NGX_OK) {
        return NGX_ERROR;
    }

    bio = FUNC1((char *) file->data, "r");
    if (bio == NULL) {
        FUNC6(NGX_LOG_EMERG, ssl->log, 0,
                      "BIO_new_file(\"%s\") failed", file->data);
        return NGX_ERROR;
    }

    dh = FUNC3(bio, NULL, NULL, NULL);
    if (dh == NULL) {
        FUNC6(NGX_LOG_EMERG, ssl->log, 0,
                      "PEM_read_bio_DHparams(\"%s\") failed", file->data);
        FUNC0(bio);
        return NGX_ERROR;
    }

    FUNC4(ssl->ctx, dh);

    FUNC2(dh);
    FUNC0(bio);

    return NGX_OK;
}