#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
struct TYPE_23__ {TYPE_3__* name; TYPE_8__* connection; TYPE_7__* data; } ;
typedef  TYPE_4__ ngx_peer_connection_t ;
struct TYPE_21__ {size_t segment_index; int /*<<< orphan*/ * segment_data; } ;
struct TYPE_24__ {int /*<<< orphan*/  log; TYPE_2__ file; TYPE_1__* loc_conf; int /*<<< orphan*/ * tfs_peer_servers; int /*<<< orphan*/  pool; int /*<<< orphan*/  state; } ;
typedef  TYPE_5__ ngx_http_tfs_t ;
struct TYPE_25__ {TYPE_4__ peer; } ;
typedef  TYPE_6__ ngx_http_tfs_peer_connection_t ;
typedef  int /*<<< orphan*/  ngx_http_tfs_inet_t ;
struct TYPE_26__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_7__ ngx_http_connection_pool_t ;
struct TYPE_27__ {scalar_t__ pool; int /*<<< orphan*/  fd; } ;
typedef  TYPE_8__ ngx_connection_t ;
struct TYPE_28__ {int /*<<< orphan*/  data; } ;
struct TYPE_22__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_20__ {int /*<<< orphan*/  meta_root_server; } ;
struct TYPE_19__ {int /*<<< orphan*/  data; } ;
struct TYPE_18__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_TFS_AGAIN ; 
 size_t NGX_HTTP_TFS_ROOT_SERVER ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 int /*<<< orphan*/  NGX_OK ; 
 TYPE_17__ ds_name ; 
 TYPE_16__ ms_name ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__ rcs_name ; 

__attribute__((used)) static void
FUNC10(ngx_http_tfs_t *t,
    ngx_http_tfs_peer_connection_t *tp)
{
    ngx_connection_t            *c;
    ngx_peer_connection_t       *p;
#if (NGX_DEBUG)
    ngx_http_connection_pool_t  *pool;
#endif

    p = &tp->peer;
    c = p->connection;
#if (NGX_DEBUG)
    /* failure connection can not be freed,
     * so make sure get&free op pairs are right
     */
    pool = p->data;
    pool->count++;
#endif

    /* close failure connection */
    if (c != NULL) {
        FUNC6(NGX_LOG_DEBUG_HTTP, t->log, 0,
                       "close http upstream connection: %d",
                       c->fd);

        if (c->pool) {
            FUNC1(c->pool);
        }

        FUNC0(c);
    }
    p->connection = NULL;

    /* connect metaserver fail, get new table from rootserver */
    if (FUNC8(p->name->data, ms_name.data) == 0) {
        t->state = NGX_HTTP_TFS_STATE_ACTION_GET_META_TABLE;
        FUNC3(t->pool,
                         &t->tfs_peer_servers[NGX_HTTP_TFS_ROOT_SERVER],
                         (ngx_http_tfs_inet_t *)&t->loc_conf->meta_root_server);
        FUNC2(t, NGX_OK);
        return;
    }

    /* connect dataserver fail, remove block cache */
    if (FUNC8(p->name->data, ds_name.data) == 0) {
        FUNC4(t,
                                  &t->file.segment_data[t->file.segment_index]);
    }

    /*connect rcserver fail, select another rc server*/
    if (FUNC9(p->name->data, rcs_name.data, p->name->len) == 0) {
        FUNC7(NGX_LOG_WARN, t->log, 0,
                "select a new rc server");
        FUNC5(t);
    }

    FUNC2(t, NGX_HTTP_TFS_AGAIN);
}