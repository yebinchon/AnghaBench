#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  queries; } ;
typedef  TYPE_1__ DnsStream ;
typedef  int /*<<< orphan*/  DnsQuery ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(DnsStream *s, int error) {
        FUNC0(s);

        FUNC3(error, "DNS TCP connection terminated, destroying queries: %m");

        for (;;) {
                DnsQuery *q;

                q = FUNC4(s->queries);
                if (!q)
                        break;

                FUNC1(q);
        }

        /* This drops the implicit ref we keep around since it was allocated, as incoming stub connections
         * should be kept as long as the client wants to. */
        FUNC2(s);
        return 0;
}