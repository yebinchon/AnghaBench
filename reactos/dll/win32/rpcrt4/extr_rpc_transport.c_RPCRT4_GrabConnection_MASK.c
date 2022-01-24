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
struct TYPE_5__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ RpcConnection ;
typedef  int /*<<< orphan*/  LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 

RpcConnection *FUNC2(RpcConnection *connection)
{
    LONG ref = FUNC0(&connection->ref);
    FUNC1("%p ref=%u\n", connection, ref);
    return connection;
}