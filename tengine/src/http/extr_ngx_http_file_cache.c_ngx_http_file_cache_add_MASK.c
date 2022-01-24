#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_rbtree_key_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_16__ {scalar_t__ fail_time; scalar_t__ inactive; TYPE_6__* shpool; TYPE_1__* sh; } ;
typedef  TYPE_2__ ngx_http_file_cache_t ;
struct TYPE_20__ {int /*<<< orphan*/  key; } ;
struct TYPE_17__ {int uses; int exists; int /*<<< orphan*/  queue; scalar_t__ expire; scalar_t__ fs_size; TYPE_7__ node; int /*<<< orphan*/ * key; } ;
typedef  TYPE_3__ ngx_http_file_cache_node_t ;
struct TYPE_18__ {scalar_t__ fs_size; int /*<<< orphan*/ * key; } ;
typedef  TYPE_4__ ngx_http_cache_t ;
struct TYPE_19__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  log_ctx; } ;
struct TYPE_15__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  size; int /*<<< orphan*/  rbtree; int /*<<< orphan*/  count; } ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int NGX_HTTP_CACHE_KEY_LEN ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_OK ; 
 TYPE_13__* ngx_cycle ; 
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (TYPE_6__*,int) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static ngx_int_t
FUNC11(ngx_http_file_cache_t *cache, ngx_http_cache_t *c)
{
    ngx_http_file_cache_node_t  *fcn;

    FUNC7(&cache->shpool->mutex);

    fcn = FUNC0(cache, c->key);

    if (fcn == NULL) {

        fcn = FUNC9(cache->shpool,
                                     sizeof(ngx_http_file_cache_node_t));
        if (fcn == NULL) {
            FUNC1(cache);

            if (cache->fail_time != FUNC10()) {
                cache->fail_time = FUNC10();
                FUNC2(NGX_LOG_ALERT, ngx_cycle->log, 0,
                           "could not allocate node%s", cache->shpool->log_ctx);
            }

            FUNC8(&cache->shpool->mutex);
            return NGX_ERROR;
        }

        cache->sh->count++;

        FUNC3((u_char *) &fcn->node.key, c->key, sizeof(ngx_rbtree_key_t));

        FUNC3(fcn->key, &c->key[sizeof(ngx_rbtree_key_t)],
                   NGX_HTTP_CACHE_KEY_LEN - sizeof(ngx_rbtree_key_t));

        FUNC6(&cache->sh->rbtree, &fcn->node);

        fcn->uses = 1;
        fcn->exists = 1;
        fcn->fs_size = c->fs_size;

        cache->sh->size += c->fs_size;

    } else {
        FUNC5(&fcn->queue);
    }

    fcn->expire = FUNC10() + cache->inactive;

    FUNC4(&cache->sh->queue, &fcn->queue);

    FUNC8(&cache->shpool->mutex);

    return NGX_OK;
}