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
struct TYPE_3__ {int /*<<< orphan*/  main_table_relid; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ Hypertable ;
typedef  int /*<<< orphan*/  Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int*) ; 
 int SECURITY_LOCAL_USERID_CHANGE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  create_trigger_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(Hypertable *ht, Chunk *chunk)
{
	int sec_ctx;
	Oid saved_uid;
	Oid owner = FUNC3(ht->main_table_relid);

	FUNC0(&saved_uid, &sec_ctx);

	if (saved_uid != owner)
		FUNC1(owner, sec_ctx | SECURITY_LOCAL_USERID_CHANGE);

	FUNC2(ht->main_table_relid, create_trigger_handler, chunk);

	if (saved_uid != owner)
		FUNC1(saved_uid, sec_ctx);
}