#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  line; int /*<<< orphan*/  file; int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ ngx_thread_pool_t ;
struct TYPE_17__ {int /*<<< orphan*/  pools; } ;
typedef  TYPE_5__ ngx_thread_pool_conf_t ;
typedef  int /*<<< orphan*/  ngx_str_t ;
struct TYPE_18__ {TYPE_8__* cycle; TYPE_3__* conf_file; int /*<<< orphan*/  pool; } ;
typedef  TYPE_6__ ngx_conf_t ;
struct TYPE_19__ {int /*<<< orphan*/  conf_ctx; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
struct TYPE_14__ {TYPE_1__ name; } ;
struct TYPE_15__ {int /*<<< orphan*/  line; TYPE_2__ file; } ;

/* Variables and functions */
 TYPE_4__** FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ngx_thread_pool_default ; 
 TYPE_4__* FUNC3 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_thread_pool_module ; 

ngx_thread_pool_t *
FUNC4(ngx_conf_t *cf, ngx_str_t *name)
{
    ngx_thread_pool_t       *tp, **tpp;
    ngx_thread_pool_conf_t  *tcf;

    if (name == NULL) {
        name = &ngx_thread_pool_default;
    }

    tp = FUNC3(cf->cycle, name);

    if (tp) {
        return tp;
    }

    tp = FUNC2(cf->pool, sizeof(ngx_thread_pool_t));
    if (tp == NULL) {
        return NULL;
    }

    tp->name = *name;
    tp->file = cf->conf_file->file.name.data;
    tp->line = cf->conf_file->line;

    tcf = (ngx_thread_pool_conf_t *) FUNC1(cf->cycle->conf_ctx,
                                                  ngx_thread_pool_module);

    tpp = FUNC0(&tcf->pools);
    if (tpp == NULL) {
        return NULL;
    }

    *tpp = tp;

    return tp;
}