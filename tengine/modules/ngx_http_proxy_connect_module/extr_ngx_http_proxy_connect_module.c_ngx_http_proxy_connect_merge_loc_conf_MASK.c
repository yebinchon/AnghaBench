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
struct TYPE_2__ {int /*<<< orphan*/  local; int /*<<< orphan*/ * address; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  send_lowat; int /*<<< orphan*/  read_timeout; int /*<<< orphan*/  send_timeout; int /*<<< orphan*/  connect_timeout; int /*<<< orphan*/  allow_ports; int /*<<< orphan*/  allow_port_all; int /*<<< orphan*/  accept_connect; } ;
typedef  TYPE_1__ ngx_http_proxy_connect_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC4(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_proxy_connect_loc_conf_t    *prev = parent;
    ngx_http_proxy_connect_loc_conf_t    *conf = child;

    FUNC3(conf->accept_connect, prev->accept_connect, 0);
    FUNC3(conf->allow_port_all, prev->allow_port_all, 0);
    FUNC1(conf->allow_ports, prev->allow_ports, NULL);

    FUNC0(conf->connect_timeout,
                              prev->connect_timeout, 60000);

    FUNC0(conf->send_timeout, prev->send_timeout, 60000);

    FUNC0(conf->read_timeout, prev->read_timeout, 60000);

    FUNC2(conf->send_lowat, prev->send_lowat, 0);

    FUNC2(conf->buffer_size, prev->buffer_size, 16384);

    if (conf->address == NULL) {
        conf->address = prev->address;
    }

    FUNC1(conf->local, prev->local, NULL);

    return NGX_CONF_OK;
}