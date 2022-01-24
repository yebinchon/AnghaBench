#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_8__ {TYPE_1__* request_body; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_9__ {TYPE_6__* buf; struct TYPE_9__* next; } ;
typedef  TYPE_3__ ngx_chain_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_10__ {size_t last; size_t pos; } ;
struct TYPE_7__ {TYPE_3__* bufs; scalar_t__ temp_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(lua_State *L)
{
    ngx_http_request_t          *r;
    int                          n;
    size_t                       len;
    ngx_chain_t                 *cl;
    u_char                      *p;
    u_char                      *buf;

    n = FUNC2(L);

    if (n != 0) {
        return FUNC1(L, "expecting 0 arguments but seen %d", n);
    }

    r = FUNC9(L);
    if (r == NULL) {
        return FUNC1(L, "request object not found");
    }

    FUNC8(L, r);

    if (r->request_body == NULL
        || r->request_body->temp_file
        || r->request_body->bufs == NULL)
    {
        FUNC5(L);
        return 1;
    }

    cl = r->request_body->bufs;

    if (cl->next == NULL) {
        len = cl->buf->last - cl->buf->pos;

        if (len == 0) {
            FUNC5(L);
            return 1;
        }

        FUNC4(L, (char *) cl->buf->pos, len);
        return 1;
    }

    /* found multi-buffer body */

    len = 0;

    for (; cl; cl = cl->next) {
        FUNC0("body chunk len: %d", (int) FUNC6(cl->buf));
        len += cl->buf->last - cl->buf->pos;
    }

    if (len == 0) {
        FUNC5(L);
        return 1;
    }

    buf = (u_char *) FUNC3(L, len);

    p = buf;
    for (cl = r->request_body->bufs; cl; cl = cl->next) {
        p = FUNC7(p, cl->buf->pos, cl->buf->last - cl->buf->pos);
    }

    FUNC4(L, (char *) buf, len);
    return 1;
}