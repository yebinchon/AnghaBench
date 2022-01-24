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
struct TYPE_2__ {int /*<<< orphan*/  vars; int /*<<< orphan*/  uri; } ;
typedef  TYPE_1__ ngx_http_auth_request_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *
FUNC2(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_auth_request_conf_t *prev = parent;
    ngx_http_auth_request_conf_t *conf = child;

    FUNC1(conf->uri, prev->uri, "");
    FUNC0(conf->vars, prev->vars, NULL);

    return NGX_CONF_OK;
}