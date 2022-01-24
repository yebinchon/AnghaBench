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
typedef  int /*<<< orphan*/  ngx_http_fake_srv_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_fake_module ; 

__attribute__((used)) static char *FUNC2(ngx_conf_t *cf, void *prev, void *conf)
{
    ngx_http_fake_srv_conf_t   *fscf;

    fscf = FUNC1(cf, ngx_http_fake_module);
    if (fscf == NULL) {
        FUNC0(NGX_LOG_ALERT, cf, 0,
                           "get module srv conf failed in merge srv conf");
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}