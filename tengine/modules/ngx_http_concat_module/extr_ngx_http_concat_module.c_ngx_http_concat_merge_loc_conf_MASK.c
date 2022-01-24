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
struct TYPE_2__ {int /*<<< orphan*/  types; int /*<<< orphan*/  types_keys; int /*<<< orphan*/  unique; int /*<<< orphan*/  max_files; int /*<<< orphan*/  ignore_file_error; int /*<<< orphan*/  delimiter; int /*<<< orphan*/  enable; } ;
typedef  TYPE_1__ ngx_http_concat_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ngx_http_concat_default_types ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC4(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_concat_loc_conf_t *prev = parent;
    ngx_http_concat_loc_conf_t *conf = child;

    FUNC2(conf->enable, prev->enable, 0);
    FUNC0(conf->delimiter, prev->delimiter, "");
    FUNC2(conf->ignore_file_error, prev->ignore_file_error, 0);
    FUNC1(conf->max_files, prev->max_files, 10);
    FUNC2(conf->unique, prev->unique, 1);

    if (FUNC3(cf, &conf->types_keys, &conf->types,
                             &prev->types_keys, &prev->types,
                             ngx_http_concat_default_types)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}