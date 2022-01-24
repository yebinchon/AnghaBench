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
typedef  scalar_t__ usec_t ;
struct TYPE_5__ {scalar_t__ monotonic; scalar_t__ realtime; } ;
typedef  TYPE_1__ dual_timestamp ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static usec_t FUNC3(dual_timestamp *nw, dual_timestamp *next) {
        usec_t next_elapse;

        FUNC1(nw);
        FUNC1(next);

        if (FUNC2(next->monotonic)) {
                usec_t converted;

                if (next->monotonic > nw->monotonic)
                        converted = nw->realtime + (next->monotonic - nw->monotonic);
                else
                        converted = nw->realtime - (nw->monotonic - next->monotonic);

                if (FUNC2(next->realtime))
                        next_elapse = FUNC0(converted, next->realtime);
                else
                        next_elapse = converted;

        } else
                next_elapse = next->realtime;

        return next_elapse;
}