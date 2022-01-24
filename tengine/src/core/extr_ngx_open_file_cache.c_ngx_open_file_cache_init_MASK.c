#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_6__ {TYPE_2__* data; int /*<<< orphan*/  handler; } ;
typedef  TYPE_1__ ngx_pool_cleanup_t ;
struct TYPE_7__ {int /*<<< orphan*/  inactive; int /*<<< orphan*/  max; scalar_t__ current; int /*<<< orphan*/  expire_queue; int /*<<< orphan*/  sentinel; int /*<<< orphan*/  rbtree; } ;
typedef  TYPE_2__ ngx_open_file_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  ngx_open_file_cache_cleanup ; 
 int /*<<< orphan*/  ngx_open_file_cache_rbtree_insert_value ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ngx_open_file_cache_t *
FUNC4(ngx_pool_t *pool, ngx_uint_t max, time_t inactive)
{
    ngx_pool_cleanup_t     *cln;
    ngx_open_file_cache_t  *cache;

    cache = FUNC0(pool, sizeof(ngx_open_file_cache_t));
    if (cache == NULL) {
        return NULL;
    }

    FUNC3(&cache->rbtree, &cache->sentinel,
                    ngx_open_file_cache_rbtree_insert_value);

    FUNC2(&cache->expire_queue);

    cache->current = 0;
    cache->max = max;
    cache->inactive = inactive;

    cln = FUNC1(pool, 0);
    if (cln == NULL) {
        return NULL;
    }

    cln->handler = ngx_open_file_cache_cleanup;
    cln->data = cache;

    return cache;
}