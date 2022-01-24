#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_5__* request_body; } ;
typedef  TYPE_6__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_16__ {scalar_t__ pos; scalar_t__ end; int /*<<< orphan*/  temporary; int /*<<< orphan*/  memory; int /*<<< orphan*/  in_file; } ;
struct TYPE_14__ {TYPE_4__* temp_file; TYPE_1__* bufs; } ;
struct TYPE_11__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_12__ {TYPE_2__ name; int /*<<< orphan*/  directio; } ;
struct TYPE_13__ {TYPE_3__ file; } ;
struct TYPE_10__ {TYPE_9__* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 TYPE_6__* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(lua_State *L)
{
    ngx_http_request_t          *r;
    int                          n;

    n = FUNC2(L);

    if (n != 0) {
        return FUNC1(L, "expecting 0 arguments but seen %d", n);
    }

    r = FUNC7(L);
    if (r == NULL) {
        return FUNC1(L, "request object not found");
    }

    FUNC6(L, r);

    if (r->request_body == NULL || r->request_body->temp_file == NULL) {
        FUNC4(L);
        return 1;
    }

    FUNC0("XXX file directio: %u, f:%u, m:%u, t:%u, end - pos %d, size %d",
       r->request_body->temp_file->file.directio,
       r->request_body->bufs->buf->in_file,
       r->request_body->bufs->buf->memory,
       r->request_body->bufs->buf->temporary,
       (int) (r->request_body->bufs->buf->end -
              r->request_body->bufs->buf->pos),
       (int) FUNC5(r->request_body->bufs->buf));

    FUNC3(L, (char *) r->request_body->temp_file->file.name.data,
                    r->request_body->temp_file->file.name.len);
    return 1;
}