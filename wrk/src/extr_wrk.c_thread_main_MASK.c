#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_9__ {int connections; TYPE_2__* cs; int /*<<< orphan*/  start; int /*<<< orphan*/ * loop; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ thread ;
struct TYPE_10__ {char* request; size_t length; int /*<<< orphan*/  delayed; int /*<<< orphan*/ * ssl; TYPE_1__* thread; } ;
typedef  TYPE_2__ connection ;
typedef  int /*<<< orphan*/  aeEventLoop ;
struct TYPE_11__ {int /*<<< orphan*/  delay; scalar_t__ ctx; int /*<<< orphan*/  dynamic; } ;

/* Variables and functions */
 int /*<<< orphan*/  RECORD_INTERVAL_MS ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_7__ cfg ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  record_rate ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void *FUNC9(void *arg) {
    thread *thread = arg;

    char *request = NULL;
    size_t length = 0;

    if (!cfg.dynamic) {
        FUNC5(thread->L, &request, &length);
    }

    thread->cs = FUNC7(thread->connections * sizeof(connection));
    connection *c = thread->cs;

    for (uint64_t i = 0; i < thread->connections; i++, c++) {
        c->thread = thread;
        c->ssl     = cfg.ctx ? FUNC0(cfg.ctx) : NULL;
        c->request = request;
        c->length  = length;
        c->delayed = cfg.delay;
        FUNC4(thread, c);
    }

    aeEventLoop *loop = thread->loop;
    FUNC1(loop, RECORD_INTERVAL_MS, record_rate, thread, NULL);

    thread->start = FUNC6();
    FUNC3(loop);

    FUNC2(loop);
    FUNC8(thread->cs);

    return NULL;
}