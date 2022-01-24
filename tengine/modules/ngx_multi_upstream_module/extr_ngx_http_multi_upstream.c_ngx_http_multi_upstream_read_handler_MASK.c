#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_9__ ;
typedef  struct TYPE_45__   TYPE_8__ ;
typedef  struct TYPE_44__   TYPE_7__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;
typedef  struct TYPE_37__   TYPE_13__ ;
typedef  struct TYPE_36__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  ngx_table_elt_t ;
struct TYPE_43__ {TYPE_8__* cur; } ;
typedef  TYPE_6__ ngx_multi_connection_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_40__ {scalar_t__ status_n; int /*<<< orphan*/  trailers; int /*<<< orphan*/  headers; } ;
struct TYPE_42__ {scalar_t__ cached; } ;
struct TYPE_36__ {scalar_t__ pos; scalar_t__ start; scalar_t__ last; scalar_t__ end; int temporary; int /*<<< orphan*/  tag; } ;
struct TYPE_39__ {int /*<<< orphan*/  tag; } ;
struct TYPE_44__ {scalar_t__ (* process_header ) (TYPE_8__*) ;int /*<<< orphan*/  header_sent; TYPE_3__ headers_in; TYPE_1__* state; TYPE_5__ peer; scalar_t__ valid_header_in; TYPE_4__* conf; TYPE_10__ buffer; TYPE_2__ output; } ;
typedef  TYPE_7__ ngx_http_upstream_t ;
struct TYPE_45__ {TYPE_9__* connection; TYPE_7__* upstream; int /*<<< orphan*/  pool; } ;
typedef  TYPE_8__ ngx_http_request_t ;
struct TYPE_46__ {scalar_t__ (* recv ) (TYPE_9__*,scalar_t__,scalar_t__) ;TYPE_13__* log; int /*<<< orphan*/  read; TYPE_8__* data; } ;
typedef  TYPE_9__ ngx_connection_t ;
typedef  TYPE_10__ ngx_buf_t ;
struct TYPE_41__ {int buffer_size; int /*<<< orphan*/  read_timeout; } ;
struct TYPE_38__ {void* response_time; void* header_time; } ;
struct TYPE_37__ {char* action; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_HTTP_BAD_GATEWAY ; 
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int /*<<< orphan*/  NGX_HTTP_UPSTREAM_FT_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_UPSTREAM_FT_INVALID_HEADER ; 
 scalar_t__ NGX_HTTP_UPSTREAM_GET_BODY_DATA ; 
 scalar_t__ NGX_HTTP_UPSTREAM_HEADER_END ; 
 scalar_t__ NGX_HTTP_UPSTREAM_INVALID_HEADER ; 
 scalar_t__ NGX_HTTP_UPSTREAM_PARSE_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* ngx_current_msec ; 
 TYPE_6__* FUNC1 (TYPE_9__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,TYPE_7__*,scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_8__*,TYPE_7__*) ; 
 scalar_t__ FUNC10 (TYPE_8__*,TYPE_7__*) ; 
 scalar_t__ FUNC11 (TYPE_9__*) ; 
 scalar_t__ FUNC12 (TYPE_8__*,TYPE_7__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_13__*,int /*<<< orphan*/ ,char*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_13__*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_13__*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_13__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC19 (TYPE_9__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (TYPE_8__*) ; 

void
FUNC21(ngx_connection_t *pc)
{
    ssize_t                  n;
    ngx_int_t                rc;
    ngx_http_request_t      *r, *fake_r, *real_r;
    ngx_http_upstream_t     *u, *fake_u, *real_u;
    ngx_connection_t        *c, *real_c;
    ngx_multi_connection_t  *multi_c;
    ngx_buf_t               *b;

    c = pc;
    multi_c = FUNC1(pc);

    FUNC14(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "multi: http upstream read handler %p", pc);

    pc->log->action = "reading from multi upstream";

    if (FUNC11(pc) != NGX_OK) {
        FUNC4(pc, NGX_HTTP_UPSTREAM_FT_ERROR);
        return;
    }

    r = pc->data;           //fake_r
    u = r->upstream;        //fake_u
    fake_u = r->upstream;

    fake_r = r;

    if (u->buffer.start == NULL) {
        u->buffer.start = FUNC18(r->pool, u->conf->buffer_size);
        if (u->buffer.start == NULL) {
            FUNC8(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        u->buffer.pos = u->buffer.start;
        u->buffer.last = u->buffer.start;
        u->buffer.end = u->buffer.start + u->conf->buffer_size;
        u->buffer.temporary = 1;

        u->buffer.tag = u->output.tag;

        if (FUNC13(&u->headers_in.headers, r->pool, 8,
                          sizeof(ngx_table_elt_t))
            != NGX_OK)
        {
            FUNC3(pc,
                                                     NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        if (FUNC13(&u->headers_in.trailers, r->pool, 2,
                          sizeof(ngx_table_elt_t))
            != NGX_OK)
        {
            FUNC3(pc,
                                                     NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }
    }

    //fake_u buffer
    b = &fake_u->buffer;

    for ( ;; ) {
        if (b->last == b->end) {
            FUNC15(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                           "multi: read buffer full %p, %p, %p, %p"
                           , b->start, b->end, b->pos, b->last);
        } else {
            n = c->recv(c, b->last, b->end - b->last);

            if (n == NGX_AGAIN) {
                FUNC0(pc->read, u->conf->read_timeout);

                if (FUNC2(c->read, 0) != NGX_OK) {
                    FUNC3(pc,
                            NGX_HTTP_INTERNAL_SERVER_ERROR);
                    return;
                }

                return;
            }

            if (n == 0) {
                FUNC17(NGX_LOG_ERR, c->log, 0,
                        "upstream prematurely closed connection");
            }

            if (n == NGX_ERROR || n == 0) {
                FUNC4(pc, NGX_HTTP_UPSTREAM_FT_ERROR);
                return;
            }

            b->last += n;
        }

#if 0
        u->valid_header_in = 0;

        u->peer.cached = 0;
#endif

        for ( ; ; ) {
            FUNC16(NGX_LOG_DEBUG_HTTP, c->log, 0
                    , "multi: process parse start: %d, %p, %p, %p, %p"
                    , b->last - b->pos, b->start, b->end, b->pos, b->last);
            rc = u->process_header(fake_r);

            FUNC16(NGX_LOG_DEBUG_HTTP, c->log, 0
                    , "multi: process parse end: %d, %p, %p, %p, %p"
                    , b->last - b->pos, b->start, b->end, b->pos, b->last);

            if (rc == NGX_AGAIN) {
                if (b->last == b->end && b->pos == b->last) {
                    b->pos = b->start;
                    b->last = b->start;
                }

                break;
            }

            if (rc == NGX_HTTP_UPSTREAM_INVALID_HEADER) {
                FUNC4(pc, NGX_HTTP_UPSTREAM_FT_INVALID_HEADER);
                return;
            }

            if (rc == NGX_ERROR) {
                FUNC3(pc, NGX_HTTP_INTERNAL_SERVER_ERROR);
                return;
            }

            /* rc == NGX_OK || rc == NGX_ERROR */

            if (!multi_c->cur) {
                FUNC17(NGX_LOG_ERR, c->log, 0,
                              "multi: upstream next because parse cur is empty");
                FUNC3(pc, NGX_HTTP_INTERNAL_SERVER_ERROR);
                return;
            }

            real_r = multi_c->cur;
            real_u = real_r->upstream;
            real_c = real_r->connection;

            if (rc == NGX_HTTP_UPSTREAM_HEADER_END) {
                real_u->state->header_time = ngx_current_msec - real_u->state->response_time;

                if (real_u->headers_in.status_n >= NGX_HTTP_SPECIAL_RESPONSE) {

                    if (FUNC12(real_r, real_u) == NGX_OK) {
                        continue;
                    }

                    if (FUNC9(real_r, real_u) == NGX_OK) {
                        continue;
                    }
                }

                if (FUNC10(real_r, real_u) != NGX_OK) {
                    continue;
                }

                FUNC6(real_r, real_u);
            } else if (rc == NGX_HTTP_UPSTREAM_GET_BODY_DATA) {
                if (!real_u->header_sent) {
                    FUNC17(NGX_LOG_INFO, c->log, 0,
                                  "multi: get body immediate %p", fake_r);
                    //handle header first
                    real_u->state->header_time = ngx_current_msec - real_u->state->response_time;
                    if (real_u->headers_in.status_n >= NGX_HTTP_SPECIAL_RESPONSE) {
                        if (FUNC12(real_r, real_u) == NGX_OK) {
                            continue;
                        }

                        if (FUNC9(real_r, real_u) == NGX_OK) {
                            continue;
                        }
                    }

                    if (FUNC10(real_r, real_u) != NGX_OK) {
                        continue;
                    }

                    FUNC6(real_r, real_u);
                }

                FUNC5(real_r);
            } else if (rc == NGX_HTTP_UPSTREAM_PARSE_ERROR) {
                FUNC17(NGX_LOG_WARN, c->log, 0,
                              "multi: parse get error %p", fake_r);
                if (!real_u->header_sent) {
                    FUNC8(real_r, real_u, NGX_HTTP_BAD_GATEWAY);
                } else {
                    FUNC8(real_r, real_u, NGX_ERROR);
                }
            } else {
                FUNC17(NGX_LOG_ERR, c->log, 0,
                              "multi: parse code unknown: %d", rc);
                if (!real_u->header_sent) {
                    FUNC8(real_r, real_u, NGX_HTTP_INTERNAL_SERVER_ERROR);
                } else {
                    FUNC8(real_r, real_u, NGX_ERROR);
                }
            }

            FUNC7(real_c);
        }
    }
}