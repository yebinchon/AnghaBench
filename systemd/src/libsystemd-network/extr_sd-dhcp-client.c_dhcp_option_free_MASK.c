#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ sd_dhcp_option ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static sd_dhcp_option* FUNC2(sd_dhcp_option *i) {
        if (!i)
                return NULL;

        FUNC0(i->data);
        return FUNC1(i);
}