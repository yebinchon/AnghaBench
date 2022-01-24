#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  size_t uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_1__ IP_Port ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC2(uint16_t *portlist, IP_Port *ip_portlist, uint16_t len, IP ip)
{
    uint32_t i;
    uint16_t num = 0;

    for (i = 0; i < len; ++i) {
        if (FUNC0(&ip_portlist[i].ip, &ip)) {
            portlist[num] = FUNC1(ip_portlist[i].port);
            ++num;
        }
    }

    return num;
}