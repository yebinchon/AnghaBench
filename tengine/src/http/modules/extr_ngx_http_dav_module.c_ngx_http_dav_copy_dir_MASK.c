#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_8__ {int /*<<< orphan*/  log; int /*<<< orphan*/  access; TYPE_4__* data; } ;
typedef  TYPE_2__ ngx_tree_ctx_t ;
struct TYPE_9__ {size_t len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_7__ {size_t len; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {size_t len; TYPE_1__ path; } ;
typedef  TYPE_4__ ngx_http_dav_copy_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ABORT ; 
 scalar_t__ NGX_FILE_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_create_dir_n ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_tree_ctx_t *ctx, ngx_str_t *path)
{
    u_char                   *p, *dir;
    size_t                    len;
    ngx_http_dav_copy_ctx_t  *copy;

    FUNC7(NGX_LOG_DEBUG_HTTP, ctx->log, 0,
                   "http copy dir: \"%s\"", path->data);

    copy = ctx->data;

    len = copy->path.len + path->len;

    dir = FUNC0(len + 1, ctx->log);
    if (dir == NULL) {
        return NGX_ABORT;
    }

    p = FUNC1(dir, copy->path.data, copy->path.len);
    (void) FUNC2(p, path->data + copy->len, path->len - copy->len + 1);

    FUNC7(NGX_LOG_DEBUG_HTTP, ctx->log, 0,
                   "http copy dir to: \"%s\"", dir);

    if (FUNC3(dir, FUNC4(ctx->access)) == NGX_FILE_ERROR) {
        (void) FUNC6(ctx->log, ngx_errno, 0, ngx_create_dir_n,
                                  dir);
    }

    FUNC5(dir);

    return NGX_OK;
}