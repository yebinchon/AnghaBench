#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  rio ;
typedef  int /*<<< orphan*/  rdbSaveInfo ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  RDBFLAGS_NONE ; 
 int /*<<< orphan*/  RDBFLAGS_REPLICATION ; 
 int RDB_EOF_MARK_SIZE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(rio *rdb, int *error, rdbSaveInfo *rsi) {
    char eofmark[RDB_EOF_MARK_SIZE];

    FUNC3(RDBFLAGS_REPLICATION);
    FUNC0(eofmark,RDB_EOF_MARK_SIZE);
    if (error) *error = 0;
    if (FUNC2(rdb,"$EOF:",5) == 0) goto werr;
    if (FUNC2(rdb,eofmark,RDB_EOF_MARK_SIZE) == 0) goto werr;
    if (FUNC2(rdb,"\r\n",2) == 0) goto werr;
    if (FUNC1(rdb,error,RDBFLAGS_NONE,rsi) == C_ERR) goto werr;
    if (FUNC2(rdb,eofmark,RDB_EOF_MARK_SIZE) == 0) goto werr;
    FUNC4(1);
    return C_OK;

werr: /* Write error. */
    /* Set 'error' only if not already set by rdbSaveRio() call. */
    if (error && *error == 0) *error = errno;
    FUNC4(0);
    return C_ERR;
}