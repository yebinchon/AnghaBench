#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  user_defined_str; int /*<<< orphan*/  user_select; int /*<<< orphan*/  display; int /*<<< orphan*/  monitor; int /*<<< orphan*/  bypass; int /*<<< orphan*/  lazy; } ;
typedef  TYPE_1__ ngx_http_reqstat_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC2(ngx_conf_t *cf, void *parent,
    void *child)
{
    ngx_http_reqstat_conf_t      *conf = child;
    ngx_http_reqstat_conf_t      *prev = parent;

    FUNC1(conf->lazy, prev->lazy, 0);
    FUNC0(conf->bypass, prev->bypass, NULL);
    FUNC0(conf->monitor, prev->monitor, NULL);
    FUNC0(conf->display, prev->display, NULL);
    FUNC0(conf->user_select, prev->user_select, NULL);
    FUNC0(conf->user_defined_str, prev->user_defined_str, NULL);

    return NGX_CONF_OK;
}