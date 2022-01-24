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
struct TYPE_5__ {int /*<<< orphan*/  sock; int /*<<< orphan*/  priority_queue_start; } ;
typedef  TYPE_1__ TCP_Client_Connection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(TCP_Client_Connection *TCP_connection)
{
    if (TCP_connection == NULL)
        return;

    FUNC3(TCP_connection->priority_queue_start);
    FUNC1(TCP_connection->sock);
    FUNC2(TCP_connection, sizeof(TCP_Client_Connection));
    FUNC0(TCP_connection);
}