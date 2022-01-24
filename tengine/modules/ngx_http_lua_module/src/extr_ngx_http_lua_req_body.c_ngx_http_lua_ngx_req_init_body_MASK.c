#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  data; scalar_t__ len; } ;
struct TYPE_16__ {scalar_t__ fd; TYPE_1__ name; } ;
struct TYPE_18__ {TYPE_2__ file; } ;
typedef  TYPE_4__ ngx_temp_file_t ;
struct TYPE_17__ {scalar_t__ content_length_n; } ;
struct TYPE_19__ {int request_body_in_file_only; int request_body_in_clean_file; int /*<<< orphan*/  pool; TYPE_3__ headers_in; TYPE_6__* request_body; scalar_t__ discard_body; } ;
typedef  TYPE_5__ ngx_http_request_t ;
struct TYPE_20__ {TYPE_13__* bufs; int /*<<< orphan*/ * buf; TYPE_4__* temp_file; } ;
typedef  TYPE_6__ ngx_http_request_body_t ;
struct TYPE_21__ {size_t client_body_buffer_size; } ;
typedef  TYPE_7__ ngx_http_core_loc_conf_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Integer ;
struct TYPE_14__ {int /*<<< orphan*/ * next; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 scalar_t__ NGX_INVALID_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_13__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_7__* FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 

__attribute__((used)) static int
FUNC11(lua_State *L)
{
    ngx_http_request_t          *r;
    int                          n;
    ngx_http_request_body_t     *rb;
    size_t                       size;
    lua_Integer                  num;
#if 1
    ngx_temp_file_t             *tf;
#endif
    ngx_http_core_loc_conf_t    *clcf;

    n = FUNC3(L);

    if (n != 1 && n != 0) {
        return FUNC2(L, "expecting 0 or 1 argument but seen %d", n);
    }

    r = FUNC8(L);
    if (r == NULL) {
        return FUNC2(L, "no request found");
    }

    FUNC7(L, r);

    if (r->discard_body) {
        return FUNC2(L, "request body already discarded asynchronously");
    }

    if (r->request_body == NULL) {
        return FUNC2(L, "request body not read yet");
    }

    if (n == 1) {
        num = FUNC1(L, 1);
        if (num < 0) {
            return FUNC2(L, "bad size argument: %d", (int) num);
        }

        size = (size_t) num;

    } else {

        clcf = FUNC6(r, ngx_http_core_module);
        size = clcf->client_body_buffer_size;
    }

    if (size == 0) {
        r->request_body_in_file_only = 1;
    }

    rb = r->request_body;

#if 1
    tf = rb->temp_file;

    if (tf) {
        if (tf->file.fd != NGX_INVALID_FILE) {

            FUNC0("cleaning temp file %.*s", (int) tf->file.name.len,
               tf->file.name.data);

            FUNC9(r->pool, tf->file.fd);

            FUNC10(tf, sizeof(ngx_temp_file_t));

            tf->file.fd = NGX_INVALID_FILE;

            FUNC0("temp file cleaned: %.*s", (int) tf->file.name.len,
               tf->file.name.data);
        }

        rb->temp_file = NULL;
    }
#endif

    r->request_body_in_clean_file = 1;

    r->headers_in.content_length_n = 0;

    rb->buf = FUNC5(r->pool, size);
    if (rb->buf == NULL) {
        return FUNC2(L, "no memory");
    }

    rb->bufs = FUNC4(r->pool);
    if (rb->bufs == NULL) {
        return FUNC2(L, "no memory");
    }

    rb->bufs->buf = rb->buf;
    rb->bufs->next = NULL;

    return 0;
}