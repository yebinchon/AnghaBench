#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VirtualTransactionId ;
struct TYPE_7__ {int message_type; int /*<<< orphan*/  sender_pid; } ;
typedef  int /*<<< orphan*/  PGPROC ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  TYPE_1__ BgwMessage ;
typedef  int /*<<< orphan*/  AckResult ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_FAILURE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG ; 
#define  RESTART 130 
#define  START 129 
#define  STOP 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9(HTAB *db_htab)
{
	BgwMessage *message = FUNC7();
	PGPROC *sender;
	VirtualTransactionId vxid;
	AckResult action_result = ACK_FAILURE;

	if (message == NULL)
		return false;

	sender = FUNC0(message->sender_pid);
	if (sender == NULL)
	{
		FUNC2(LOG,
				(FUNC3("TimescaleDB background worker launcher received message from non-existent "
						"backend")));
		return true;
	}

	FUNC1(vxid, *sender);

	switch (message->message_type)
	{
		case START:
			action_result = FUNC5(db_htab, message);
			break;
		case STOP:
			action_result = FUNC6(db_htab, message);
			break;
		case RESTART:
			action_result = FUNC4(db_htab, message, vxid);
			break;
	}

	FUNC8(message, action_result);
	return true;
}