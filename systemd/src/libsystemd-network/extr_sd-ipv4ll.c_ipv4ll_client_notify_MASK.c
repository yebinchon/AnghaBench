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
struct TYPE_5__ {int /*<<< orphan*/  userdata; int /*<<< orphan*/  (* callback ) (TYPE_1__*,int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ sd_ipv4ll ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(sd_ipv4ll *ll, int event) {
        FUNC0(ll);

        if (ll->callback)
                ll->callback(ll, event, ll->userdata);
}