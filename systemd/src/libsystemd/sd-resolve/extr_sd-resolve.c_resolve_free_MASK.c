#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* floating; } ;
typedef  TYPE_1__ sd_resolve_query ;
struct TYPE_14__ {int dead; scalar_t__* fds; unsigned int n_valid_workers; int /*<<< orphan*/ * workers; int /*<<< orphan*/ ** default_resolve_ptr; TYPE_1__* queries; } ;
typedef  TYPE_2__ sd_resolve ;
struct TYPE_15__ {int length; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ RHeader ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  PROTECT_ERRNO ; 
 size_t REQUEST_SEND_FD ; 
 int /*<<< orphan*/  REQUEST_TERMINATE ; 
 int /*<<< orphan*/  _FD_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_3__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sd_resolve *FUNC8(sd_resolve *resolve) {
        PROTECT_ERRNO;
        sd_resolve_query *q;
        unsigned i;

        FUNC0(resolve);

        while ((q = resolve->queries)) {
                FUNC0(q->floating);
                FUNC4(q);
                FUNC6(q);
        }

        if (resolve->default_resolve_ptr)
                *(resolve->default_resolve_ptr) = NULL;

        resolve->dead = true;

        FUNC5(resolve);

        if (resolve->fds[REQUEST_SEND_FD] >= 0) {

                RHeader req = {
                        .type = REQUEST_TERMINATE,
                        .length = sizeof req,
                };

                /* Send one termination packet for each worker */
                for (i = 0; i < resolve->n_valid_workers; i++)
                        (void) FUNC7(resolve->fds[REQUEST_SEND_FD], &req, req.length, MSG_NOSIGNAL);
        }

        /* Now terminate them and wait until they are gone.
           If we get an error than most likely the thread already exited. */
        for (i = 0; i < resolve->n_valid_workers; i++)
                (void) FUNC3(resolve->workers[i], NULL);

        /* Close all communication channels */
        FUNC1(resolve->fds, _FD_MAX);

        return FUNC2(resolve);
}