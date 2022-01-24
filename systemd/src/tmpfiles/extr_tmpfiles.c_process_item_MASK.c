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
struct TYPE_7__ {int done; scalar_t__ allow_failure; int /*<<< orphan*/  path; } ;
typedef  int OperationMask ;
typedef  TYPE_1__ Item ;

/* Variables and functions */
 int CHASE_NO_AUTOFS ; 
 int CHASE_WARN ; 
 int EREMOTE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPERATION_CLEAN ; 
 int /*<<< orphan*/  OPERATION_CREATE ; 
 int /*<<< orphan*/  OPERATION_REMOVE ; 
 int /*<<< orphan*/  arg_root ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(Item *i, OperationMask operation) {
        OperationMask todo;
        int r, q, p;

        FUNC1(i);

        todo = operation & ~i->done;
        if (todo == 0) /* Everything already done? */
                return 0;

        i->done |= operation;

        r = FUNC2(i->path, arg_root, CHASE_NO_AUTOFS|CHASE_WARN, NULL, NULL);
        if (r == -EREMOTE) {
                FUNC6(r, "Skipping %s", i->path);
                return 0;
        }
        if (r < 0)
                FUNC5(r, "Failed to determine whether '%s' is below autofs, ignoring: %m", i->path);

        r = FUNC0(operation, OPERATION_CREATE) ? FUNC4(i) : 0;
        /* Failure can only be tolerated for create */
        if (i->allow_failure)
                r = 0;

        q = FUNC0(operation, OPERATION_REMOVE) ? FUNC7(i) : 0;
        p = FUNC0(operation, OPERATION_CLEAN) ? FUNC3(i) : 0;

        return r < 0 ? r :
                q < 0 ? q :
                p;
}