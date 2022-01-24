#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_8__ {scalar_t__ cpuusage; scalar_t__ cpu_interval; int /*<<< orphan*/  enable; } ;
typedef  TYPE_2__ ngx_http_sysguard_conf_t ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  ngx_cpuinfo_t ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_CONF_UNSET ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ngx_http_sysguard_cached_cpuinfo_exptime ; 
 int /*<<< orphan*/  ngx_http_sysguard_cached_cur_cputime ; 
 int /*<<< orphan*/  ngx_http_sysguard_cached_pre_cputime ; 
 int /*<<< orphan*/  ngx_http_sysguard_module ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 () ; 

void
FUNC5(ngx_http_request_t *r)
{
    ngx_int_t                       rc;
    ngx_cpuinfo_t                   cpuinfo;
    ngx_http_sysguard_conf_t       *glcf;
    ngx_str_t                       cpunumber;

    FUNC3(&cpunumber, "cpu");

    glcf = FUNC1(r, ngx_http_sysguard_module);

    if (!glcf->enable) {
        return;
    }

    if (glcf->cpuusage == NGX_CONF_UNSET) {
        return;
    }

    if (ngx_http_sysguard_cached_cpuinfo_exptime < FUNC4()) {
        rc = FUNC0(&cpunumber, &cpuinfo, r->connection->log);
        if (rc == NGX_ERROR) {
            FUNC2(&cpuinfo, sizeof(ngx_cpuinfo_t));
            return;
        }

        ngx_http_sysguard_cached_pre_cputime = ngx_http_sysguard_cached_cur_cputime;
        ngx_http_sysguard_cached_cur_cputime = cpuinfo;
        ngx_http_sysguard_cached_cpuinfo_exptime = FUNC4() + glcf->cpu_interval;
    }

    return;
}