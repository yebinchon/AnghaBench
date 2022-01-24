#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_http_handler_pt ;
struct TYPE_5__ {TYPE_1__* phases; } ;
typedef  TYPE_2__ ngx_http_core_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;
struct TYPE_4__ {int /*<<< orphan*/  handlers; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 size_t NGX_HTTP_ACCESS_PHASE ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_access_handler ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 

__attribute__((used)) static ngx_int_t
FUNC2(ngx_conf_t *cf)
{
    ngx_http_handler_pt        *h;
    ngx_http_core_main_conf_t  *cmcf;

    cmcf = FUNC1(cf, ngx_http_core_module);

    h = FUNC0(&cmcf->phases[NGX_HTTP_ACCESS_PHASE].handlers);
    if (h == NULL) {
        return NGX_ERROR;
    }

    *h = ngx_http_access_handler;

    return NGX_OK;
}