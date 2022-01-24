#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_3__ {int a; } ;
typedef  TYPE_1__ ngx_http_fake_merge_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_fake_merge_module ; 

__attribute__((used)) static ngx_int_t FUNC2(ngx_conf_t *cf)
{
    ngx_http_fake_merge_loc_conf_t   *flcf;

    flcf = FUNC0(cf,
                                              ngx_http_fake_merge_module);
    if (flcf == NULL) {
        return NGX_ERROR;
    }

    flcf->a = 1;
 
    if (FUNC1(cf) != NGX_OK) {
        return NGX_ERROR;
    }
    
    return NGX_OK;
}