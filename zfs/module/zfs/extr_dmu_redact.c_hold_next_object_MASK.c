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
typedef  scalar_t__ uint64_t ;
struct redact_record {scalar_t__ start_object; } ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_5__ {int /*<<< orphan*/  dn_type; } ;
typedef  TYPE_1__ dnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FTAG ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,void*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*) ; 

__attribute__((used)) static int
FUNC4(objset_t *os, struct redact_record *rec, void *tag,
    uint64_t *object, dnode_t **dn)
{
	int err = 0;
	if (*dn != NULL)
		FUNC3(*dn, FTAG);
	*dn = NULL;
	if (*object < rec->start_object) {
		*object = rec->start_object - 1;
	}
	err = FUNC1(os, object, B_FALSE, 0);
	if (err != 0)
		return (err);

	err = FUNC2(os, *object, tag, dn);
	while (err == 0 && (*object < rec->start_object ||
	    FUNC0((*dn)->dn_type))) {
		FUNC3(*dn, tag);
		*dn = NULL;
		err = FUNC1(os, object, B_FALSE, 0);
		if (err != 0)
			break;
		err = FUNC2(os, *object, tag, dn);
	}
	return (err);
}