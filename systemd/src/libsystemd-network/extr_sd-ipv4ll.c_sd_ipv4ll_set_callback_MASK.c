#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_ipv4ll_callback_t ;
struct TYPE_4__ {void* userdata; int /*<<< orphan*/  callback; } ;
typedef  TYPE_1__ sd_ipv4ll ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC1(sd_ipv4ll *ll, sd_ipv4ll_callback_t cb, void *userdata) {
        FUNC0(ll, -EINVAL);

        ll->callback = cb;
        ll->userdata = userdata;

        return 0;
}