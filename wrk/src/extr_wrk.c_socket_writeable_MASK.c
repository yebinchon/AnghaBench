#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_10__ {int /*<<< orphan*/  write; } ;
struct TYPE_11__ {TYPE_1__ errors; int /*<<< orphan*/  L; } ;
typedef  TYPE_2__ thread ;
struct TYPE_12__ {int written; char* request; size_t length; int /*<<< orphan*/  pending; int /*<<< orphan*/  start; scalar_t__ delayed; TYPE_2__* thread; } ;
typedef  TYPE_3__ connection ;
typedef  int /*<<< orphan*/  aeEventLoop ;
struct TYPE_14__ {int /*<<< orphan*/  pipeline; scalar_t__ dynamic; } ;
struct TYPE_13__ {int (* write ) (TYPE_3__*,char*,size_t,size_t*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AE_WRITABLE ; 
#define  ERROR 130 
#define  OK 129 
#define  RETRY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_8__ cfg ; 
 int /*<<< orphan*/  delay_request ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char**,size_t*) ; 
 TYPE_5__ sock ; 
 int FUNC5 (TYPE_3__*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(aeEventLoop *loop, int fd, void *data, int mask) {
    connection *c = data;
    thread *thread = c->thread;

    if (c->delayed) {
        uint64_t delay = FUNC3(thread->L);
        FUNC1(loop, fd, AE_WRITABLE);
        FUNC0(loop, delay, delay_request, c, NULL);
        return;
    }

    if (!c->written) {
        if (cfg.dynamic) {
            FUNC4(thread->L, &c->request, &c->length);
        }
        c->start   = FUNC6();
        c->pending = cfg.pipeline;
    }

    char  *buf = c->request + c->written;
    size_t len = c->length  - c->written;
    size_t n;

    switch (sock.write(c, buf, len, &n)) {
        case OK:    break;
        case ERROR: goto error;
        case RETRY: return;
    }

    c->written += n;
    if (c->written == c->length) {
        c->written = 0;
        FUNC1(loop, fd, AE_WRITABLE);
    }

    return;

  error:
    thread->errors.write++;
    FUNC2(thread, c);
}