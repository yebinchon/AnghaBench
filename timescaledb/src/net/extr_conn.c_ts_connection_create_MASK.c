#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ (* init ) (TYPE_2__*) ;} ;
typedef  size_t ConnectionType ;
typedef  TYPE_2__ Connection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 size_t _CONNECTION_MAX ; 
 int /*<<< orphan*/ * conn_names ; 
 int /*<<< orphan*/ ** conn_ops ; 
 TYPE_2__* FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 

Connection *
FUNC8(ConnectionType type)
{
	Connection *conn;

	if (type == _CONNECTION_MAX)
		FUNC2(ERROR, "invalid connection type");

	if (NULL == conn_ops[type])
		FUNC3(ERROR,
				(FUNC4(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC6("%s connections are not supported", conn_names[type]),
				 FUNC5("Enable %s support when compiling the extension.", conn_names[type])));

	conn = FUNC1(type, conn_ops[type]);

	FUNC0(NULL != conn);

	if (NULL != conn->ops->init)
		if (conn->ops->init(conn) < 0)
			FUNC3(ERROR,
					(FUNC4(ERRCODE_INTERNAL_ERROR),
					 FUNC6("%s connection could not be initialized", conn_names[type])));

	return conn;
}