#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  ip; } ;
struct TYPE_8__ {int /*<<< orphan*/  last_to_ping; TYPE_1__* to_ping; int /*<<< orphan*/  dht; } ;
struct TYPE_7__ {TYPE_4__ ip_port; int /*<<< orphan*/  public_key; } ;
typedef  TYPE_2__ PING ;

/* Variables and functions */
 unsigned int MAX_TO_PING ; 
 int /*<<< orphan*/  TIME_TO_PING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(PING *ping)
{
    if (!FUNC2(ping->last_to_ping, TIME_TO_PING))
        return;

    if (!FUNC0(&ping->to_ping[0].ip_port.ip))
        return;

    unsigned int i;

    for (i = 0; i < MAX_TO_PING; ++i) {
        if (!FUNC0(&ping->to_ping[i].ip_port.ip))
            break;

        if (!FUNC3(ping->dht, ping->to_ping[i].public_key, ping->to_ping[i].ip_port))
            continue;

        FUNC4(ping, ping->to_ping[i].ip_port, ping->to_ping[i].public_key);
        FUNC1(&ping->to_ping[i].ip_port.ip);
    }

    if (i != 0)
        ping->last_to_ping = FUNC5();
}