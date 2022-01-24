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
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  tcp_mutex; int /*<<< orphan*/  tcp_c; } ;
typedef  int /*<<< orphan*/  Node_format ;
typedef  TYPE_1__ Net_Crypto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

unsigned int FUNC3(Net_Crypto *c, Node_format *tcp_relays, uint16_t num)
{
    if (num == 0)
        return 0;

    FUNC0(&c->tcp_mutex);
    unsigned int ret = FUNC2(c->tcp_c, tcp_relays, num);
    FUNC1(&c->tcp_mutex);

    return ret;
}