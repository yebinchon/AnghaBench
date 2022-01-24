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
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 char* FUNC0 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ngx_linux_rtsig_max ; 

__attribute__((used)) static char *
FUNC2(ngx_conf_t *cf, void *post, void *data)
{
    if (ngx_linux_rtsig_max) {
        return FUNC0(cf, post, data);
    }

    FUNC1(NGX_LOG_WARN, cf, 0,
                       "\"rtsig_overflow_threshold\" is not supported "
                       "since Linux 2.6.6-mm2, ignored");

    return NGX_CONF_OK;
}