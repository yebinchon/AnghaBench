#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ sa_family; } ;
struct TYPE_16__ {TYPE_1__ sa; } ;
struct TYPE_17__ {scalar_t__ nspid; int last_connect_error; TYPE_2__ sockaddr; scalar_t__ machine; scalar_t__ exec_path; } ;
typedef  TYPE_3__ sd_bus ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int ECONNREFUSED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC10(sd_bus *b) {
        int r;

        FUNC0(b);

        for (;;) {
                FUNC4(b);
                FUNC3(b);

                FUNC6(b);

                /* If you provide multiple different bus-addresses, we
                 * try all of them in order and use the first one that
                 * succeeds. */

                if (b->exec_path)
                        r = FUNC9(b);
                else if ((b->nspid > 0 || b->machine) && b->sockaddr.sa.sa_family != AF_UNSPEC)
                        r = FUNC5(b);
                else if (b->sockaddr.sa.sa_family != AF_UNSPEC)
                        r = FUNC8(b);
                else
                        goto next;

                if (r >= 0) {
                        int q;

                        q = FUNC2(b);
                        if (q < 0)
                                return q;

                        q = FUNC1(b);
                        if (q < 0)
                                return q;

                        return r;
                }

                b->last_connect_error = -r;

        next:
                r = FUNC7(b);
                if (r < 0)
                        return r;
                if (r == 0)
                        return b->last_connect_error > 0 ? -b->last_connect_error : -ECONNREFUSED;
        }
}