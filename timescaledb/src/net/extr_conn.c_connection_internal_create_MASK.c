#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  size; } ;
struct TYPE_7__ {int /*<<< orphan*/  type; TYPE_2__* ops; } ;
typedef  int /*<<< orphan*/  ConnectionType ;
typedef  TYPE_1__ Connection ;
typedef  TYPE_2__ ConnOps ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Connection *
FUNC2(ConnectionType type, ConnOps *ops)
{
	Connection *conn = FUNC1(ops->size);

	if (NULL == conn)
		return NULL;

	FUNC0(conn, 0, ops->size);
	conn->ops = ops;
	conn->type = type;

	return conn;
}