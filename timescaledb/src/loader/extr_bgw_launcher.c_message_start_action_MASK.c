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
struct TYPE_8__ {int /*<<< orphan*/  db_oid; } ;
struct TYPE_7__ {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  TYPE_1__ DbHashEntry ;
typedef  TYPE_2__ BgwMessage ;
typedef  int /*<<< orphan*/  AckResult ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_FAILURE ; 
 int /*<<< orphan*/  ACK_SUCCESS ; 
 scalar_t__ DISABLED ; 
 scalar_t__ STARTED ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static AckResult
FUNC3(HTAB *db_htab, BgwMessage *message)
{
	DbHashEntry *entry;

	entry = FUNC0(db_htab, message->db_oid);

	if (entry->state == DISABLED)
		FUNC2(entry);

	FUNC1(entry);

	return (entry->state == STARTED ? ACK_SUCCESS : ACK_FAILURE);
}