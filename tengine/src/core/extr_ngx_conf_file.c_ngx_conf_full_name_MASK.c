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
typedef  scalar_t__ ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_3__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  prefix; int /*<<< orphan*/  conf_prefix; } ;
typedef  TYPE_1__ ngx_cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ngx_int_t
FUNC1(ngx_cycle_t *cycle, ngx_str_t *name, ngx_uint_t conf_prefix)
{
    ngx_str_t  *prefix;

    prefix = conf_prefix ? &cycle->conf_prefix : &cycle->prefix;

    return FUNC0(cycle->pool, prefix, name);
}