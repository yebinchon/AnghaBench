#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_13__ {int code; } ;
struct TYPE_14__ {TYPE_2__ action; } ;
struct TYPE_12__ {size_t segment_index; int /*<<< orphan*/ * segment_data; } ;
struct TYPE_15__ {int /*<<< orphan*/  state; TYPE_3__ r_ctx; TYPE_1__ file; } ;
typedef  TYPE_4__ ngx_http_tfs_t ;
typedef  int /*<<< orphan*/  ngx_http_tfs_segment_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
#define  NGX_HTTP_TFS_ACTION_READ_FILE 139 
#define  NGX_HTTP_TFS_ACTION_REMOVE_FILE 138 
#define  NGX_HTTP_TFS_ACTION_STAT_FILE 137 
#define  NGX_HTTP_TFS_ACTION_WRITE_FILE 136 
#define  NGX_HTTP_TFS_STATE_REMOVE_DELETE_DATA 135 
#define  NGX_HTTP_TFS_STATE_REMOVE_READ_META_SEGMENT 134 
#define  NGX_HTTP_TFS_STATE_REMOVE_STAT_FILE 133 
#define  NGX_HTTP_TFS_STATE_WRITE_CLOSE_FILE 132 
#define  NGX_HTTP_TFS_STATE_WRITE_CREATE_FILE_NAME 131 
#define  NGX_HTTP_TFS_STATE_WRITE_DELETE_DATA 130 
#define  NGX_HTTP_TFS_STATE_WRITE_STAT_DUP_FILE 129 
#define  NGX_HTTP_TFS_STATE_WRITE_WRITE_DATA 128 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

ngx_int_t
FUNC6(ngx_http_tfs_t *t)
{
    ngx_http_tfs_segment_data_t  *segment_data;

    segment_data = &t->file.segment_data[t->file.segment_index];

    switch (t->r_ctx.action.code) {
    case NGX_HTTP_TFS_ACTION_READ_FILE:
        return FUNC2(t);

    case NGX_HTTP_TFS_ACTION_STAT_FILE:
        return FUNC4(t, segment_data);

    case NGX_HTTP_TFS_ACTION_WRITE_FILE:
        switch(t->state) {
        case NGX_HTTP_TFS_STATE_WRITE_STAT_DUP_FILE:
            return FUNC4(t, segment_data);
        case NGX_HTTP_TFS_STATE_WRITE_CREATE_FILE_NAME:
            return FUNC1(t, segment_data);
        case NGX_HTTP_TFS_STATE_WRITE_WRITE_DATA:
            return FUNC5(t);
        case NGX_HTTP_TFS_STATE_WRITE_CLOSE_FILE:
            return FUNC0(t);
        case NGX_HTTP_TFS_STATE_WRITE_DELETE_DATA:
            return FUNC3(t);
        default:
            return NGX_ERROR;
        }

    case NGX_HTTP_TFS_ACTION_REMOVE_FILE:
        switch(t->state) {
        case NGX_HTTP_TFS_STATE_REMOVE_STAT_FILE:
            return FUNC4(t, segment_data);
        case NGX_HTTP_TFS_STATE_REMOVE_READ_META_SEGMENT:
            return FUNC2(t);
        case NGX_HTTP_TFS_STATE_REMOVE_DELETE_DATA:
            return FUNC3(t);
        default:
            return NGX_ERROR;
        }
    }

    return NGX_ERROR;
}