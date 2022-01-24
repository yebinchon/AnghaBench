#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_21__ {TYPE_2__* connection; } ;
typedef  TYPE_7__ ngx_http_request_t ;
struct TYPE_22__ {int /*<<< orphan*/  path; TYPE_4__* shpool; } ;
typedef  TYPE_8__ ngx_http_file_cache_t ;
struct TYPE_19__ {scalar_t__ len; } ;
struct TYPE_20__ {TYPE_5__ name; } ;
struct TYPE_15__ {scalar_t__ len; } ;
struct TYPE_23__ {int /*<<< orphan*/  main; int /*<<< orphan*/  key; TYPE_6__ file; TYPE_3__* node; TYPE_8__* file_cache; int /*<<< orphan*/  variant; TYPE_1__ vary; int /*<<< orphan*/  secondary; } ;
typedef  TYPE_9__ ngx_http_cache_t ;
struct TYPE_18__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_17__ {scalar_t__ updating; int /*<<< orphan*/  count; } ;
struct TYPE_16__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_CACHE_KEY_LEN ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_8__*,TYPE_9__*) ; 
 scalar_t__ FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC7(ngx_http_request_t *r, ngx_http_cache_t *c)
{
    ngx_http_file_cache_t  *cache;

    if (!c->secondary) {
        return NGX_OK;
    }

    if (c->vary.len
        && FUNC3(c->variant, c->key, NGX_HTTP_CACHE_KEY_LEN) == 0)
    {
        return NGX_OK;
    }

    /*
     * if the variant hash doesn't match one we used as a secondary
     * cache key, switch back to the original key
     */

    cache = c->file_cache;

    FUNC2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http file cache main key");

    FUNC5(&cache->shpool->mutex);

    c->node->count--;
    c->node->updating = 0;
    c->node = NULL;

    FUNC6(&cache->shpool->mutex);

    c->file.name.len = 0;

    FUNC4(c->key, c->main, NGX_HTTP_CACHE_KEY_LEN);

    if (FUNC0(cache, c) == NGX_ERROR) {
        return NGX_ERROR;
    }

    if (FUNC1(r, cache->path) != NGX_OK) {
        return NGX_ERROR;
    }

    return NGX_OK;
}