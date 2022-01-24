#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ status; int /*<<< orphan*/  priority_queue_start; int /*<<< orphan*/  public_key; } ;
struct TYPE_5__ {scalar_t__ size_accepted_connections; scalar_t__ num_accepted_connections; TYPE_2__* accepted_connection_array; int /*<<< orphan*/  accepted_key_list; } ;
typedef  TYPE_1__ TCP_Server ;
typedef  int /*<<< orphan*/  TCP_Secure_Connection ;

/* Variables and functions */
 scalar_t__ TCP_STATUS_NO_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(TCP_Server *TCP_server, int index)
{
    if ((uint32_t)index >= TCP_server->size_accepted_connections)
        return -1;

    if (TCP_server->accepted_connection_array[index].status == TCP_STATUS_NO_STATUS)
        return -1;

    if (!FUNC0(&TCP_server->accepted_key_list, TCP_server->accepted_connection_array[index].public_key, index))
        return -1;

    FUNC3(TCP_server->accepted_connection_array[index].priority_queue_start);
    FUNC2(&TCP_server->accepted_connection_array[index], sizeof(TCP_Secure_Connection));
    --TCP_server->num_accepted_connections;

    if (TCP_server->num_accepted_connections == 0)
        FUNC1(TCP_server, 0);

    return 0;
}