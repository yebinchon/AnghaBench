#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  serv; int /*<<< orphan*/  host; int /*<<< orphan*/  addrinfo; int /*<<< orphan*/  userdata; int /*<<< orphan*/  (* destroy_callback ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ sd_resolve_query ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sd_resolve_query *FUNC6(sd_resolve_query *q) {
        FUNC0(q);

        FUNC4(q);

        if (q->destroy_callback)
                q->destroy_callback(q->userdata);

        FUNC3(q->addrinfo);
        FUNC1(q->host);
        FUNC1(q->serv);

        return FUNC2(q);
}