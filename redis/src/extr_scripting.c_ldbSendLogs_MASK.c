#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_5__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ listNode ;
struct TYPE_6__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  logs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ ldb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,int) ; 

void FUNC11(void) {
    sds proto = FUNC7();
    proto = FUNC4(proto,"*%i\r\n", (int)FUNC3(ldb.logs));
    while(FUNC3(ldb.logs)) {
        listNode *ln = FUNC2(ldb.logs);
        proto = FUNC5(proto,"+",1);
        FUNC10(ln->value,"\r\n","  ",2);
        proto = FUNC6(proto,ln->value);
        proto = FUNC5(proto,"\r\n",2);
        FUNC1(ldb.logs,ln);
    }
    if (FUNC0(ldb.conn,proto,FUNC9(proto)) == -1) {
        /* Avoid warning. We don't check the return value of write()
         * since the next read() will catch the I/O error and will
         * close the debugging session. */
    }
    FUNC8(proto);
}