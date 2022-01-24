#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ngx_pool_t ;
struct TYPE_8__ {int len; int /*<<< orphan*/  id; int /*<<< orphan*/  crc; int /*<<< orphan*/  version; int /*<<< orphan*/  type; int /*<<< orphan*/  flag; } ;
struct TYPE_9__ {TYPE_1__ header; } ;
typedef  TYPE_2__ ngx_http_tfs_rs_request_t ;
struct TYPE_10__ {int /*<<< orphan*/ * next; TYPE_4__* buf; } ;
typedef  TYPE_3__ ngx_chain_t ;
struct TYPE_11__ {int last; scalar_t__ pos; } ;
typedef  TYPE_4__ ngx_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_TFS_PACKET_FLAG ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_PACKET_VERSION ; 
 int /*<<< orphan*/  NGX_HTTP_TFS_REQ_RT_GET_TABLE_MESSAGE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

ngx_chain_t *
FUNC4(ngx_pool_t *pool)
{
    ngx_buf_t                  *b;
    ngx_chain_t                *cl;
    ngx_http_tfs_rs_request_t  *req;

    b = FUNC1(pool, sizeof(ngx_http_tfs_rs_request_t));
    if (b == NULL) {
        return NULL;
    }

    req = (ngx_http_tfs_rs_request_t *) b->pos;
    req->header.flag = NGX_HTTP_TFS_PACKET_FLAG;
    req->header.len = sizeof(uint8_t);
    req->header.type = NGX_HTTP_TFS_REQ_RT_GET_TABLE_MESSAGE;
    req->header.version = NGX_HTTP_TFS_PACKET_VERSION;
    req->header.crc = FUNC2(NGX_HTTP_TFS_PACKET_FLAG,
                                       (const char *) (&req->header + 1),
                                       req->header.len);
    req->header.id = FUNC3();

    b->last += sizeof(ngx_http_tfs_rs_request_t);

    cl = FUNC0(pool);
    if (cl == NULL) {
        return NULL;
    }

    cl->buf = b;
    cl->next = NULL;

    return cl;
}