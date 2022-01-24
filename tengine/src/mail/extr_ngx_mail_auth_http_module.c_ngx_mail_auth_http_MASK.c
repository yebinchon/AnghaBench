#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ len; } ;
struct TYPE_14__ {int data; int len; } ;
struct TYPE_13__ {int default_port; int uri_part; scalar_t__ family; TYPE_6__ uri; TYPE_6__ host; int /*<<< orphan*/  addrs; TYPE_3__ url; scalar_t__ err; } ;
typedef  TYPE_2__ ngx_url_t ;
typedef  TYPE_3__ ngx_str_t ;
struct TYPE_15__ {TYPE_6__ uri; TYPE_6__ host_header; int /*<<< orphan*/  peer; } ;
typedef  TYPE_4__ ngx_mail_auth_http_conf_t ;
struct TYPE_16__ {int /*<<< orphan*/  pool; TYPE_1__* args; } ;
typedef  TYPE_5__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_12__ {TYPE_3__* elts; } ;

/* Variables and functions */
 scalar_t__ AF_UNIX ; 
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,char*,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 scalar_t__ FUNC4 (int,char*,int) ; 

__attribute__((used)) static char *
FUNC5(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_mail_auth_http_conf_t *ahcf = conf;

    ngx_str_t  *value;
    ngx_url_t   u;

    value = cf->args->elts;

    FUNC1(&u, sizeof(ngx_url_t));

    u.url = value[1];
    u.default_port = 80;
    u.uri_part = 1;

    if (FUNC4(u.url.data, "http://", 7) == 0) {
        u.url.len -= 7;
        u.url.data += 7;
    }

    if (FUNC2(cf->pool, &u) != NGX_OK) {
        if (u.err) {
            FUNC0(NGX_LOG_EMERG, cf, 0,
                               "%s in auth_http \"%V\"", u.err, &u.url);
        }

        return NGX_CONF_ERROR;
    }

    ahcf->peer = u.addrs;

    if (u.family != AF_UNIX) {
        ahcf->host_header = u.host;

    } else {
        FUNC3(&ahcf->host_header, "localhost");
    }

    ahcf->uri = u.uri;

    if (ahcf->uri.len == 0) {
        FUNC3(&ahcf->uri, "/");
    }

    return NGX_CONF_OK;
}