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
typedef  char u_char ;
struct TYPE_2__ {char mark; int /*<<< orphan*/  expires; int /*<<< orphan*/  service; int /*<<< orphan*/  p3p; int /*<<< orphan*/  path; int /*<<< orphan*/  domain; int /*<<< orphan*/  name; int /*<<< orphan*/  enable; } ;
typedef  TYPE_1__ ngx_http_userid_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_CONF_UNSET ; 
 int /*<<< orphan*/  NGX_HTTP_USERID_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC4(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_userid_conf_t *prev = parent;
    ngx_http_userid_conf_t *conf = child;

    FUNC2(conf->enable, prev->enable,
                              NGX_HTTP_USERID_OFF);

    FUNC1(conf->name, prev->name, "uid");
    FUNC1(conf->domain, prev->domain, "");
    FUNC1(conf->path, prev->path, "; path=/");
    FUNC1(conf->p3p, prev->p3p, "");

    FUNC3(conf->service, prev->service, NGX_CONF_UNSET);
    FUNC0(conf->expires, prev->expires, 0);

    if (conf->mark == (u_char) '\xFF') {
        if (prev->mark == (u_char) '\xFF') {
            conf->mark = '\0';
        } else {
            conf->mark = prev->mark;
        }
    }

    return NGX_CONF_OK;
}