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
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  TYPE_2__* client ;
typedef  int /*<<< orphan*/  aeEventLoop ;
struct TYPE_10__ {int requests; int /*<<< orphan*/  slots_last_update; scalar_t__ cluster_mode; scalar_t__ randomkeys; int /*<<< orphan*/  requests_issued; } ;
struct TYPE_9__ {scalar_t__ written; scalar_t__ staglen; int latency; TYPE_1__* context; void* obuf; int /*<<< orphan*/  start; int /*<<< orphan*/  slots_last_update; } ;
struct TYPE_8__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 int /*<<< orphan*/  AE_WRITABLE ; 
 scalar_t__ EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_6__ config ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  readHandler ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ,void*,scalar_t__) ; 

__attribute__((used)) static void FUNC13(aeEventLoop *el, int fd, void *privdata, int mask) {
    client c = privdata;
    FUNC0(*el);
    FUNC0(fd);
    FUNC0(mask);

    /* Initialize request when nothing was written. */
    if (c->written == 0) {
        /* Enforce upper bound to number of requests. */
        int requests_issued = 0;
        FUNC4(config.requests_issued, requests_issued, 1);
        if (requests_issued >= config.requests) {
            FUNC6(c);
            return;
        }

        /* Really initialize: randomize keys and set start time. */
        if (config.randomkeys) FUNC7(c);
        if (config.cluster_mode && c->staglen > 0) FUNC9(c);
        FUNC3(config.slots_last_update, c->slots_last_update);
        c->start = FUNC11();
        c->latency = -1;
    }
    if (FUNC8(c->obuf) > c->written) {
        void *ptr = c->obuf+c->written;
        ssize_t nwritten = FUNC12(c->context->fd,ptr,FUNC8(c->obuf)-c->written);
        if (nwritten == -1) {
            if (errno != EPIPE)
                FUNC5(stderr, "Writing to socket: %s\n", FUNC10(errno));
            FUNC6(c);
            return;
        }
        c->written += nwritten;
        if (FUNC8(c->obuf) == c->written) {
            FUNC2(el,c->context->fd,AE_WRITABLE);
            FUNC1(el,c->context->fd,AE_READABLE,readHandler,c);
        }
    }
}