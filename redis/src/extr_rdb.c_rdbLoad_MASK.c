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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(char *filename, rdbSaveInfo *rsi, int rdbflags) {
    FILE *fp;
    rio rdb;
    int retval;

    if ((fp = FUNC1(filename,"r")) == NULL) return C_ERR;
    FUNC4(fp, filename,rdbflags);
    FUNC3(&rdb,fp);
    retval = FUNC2(&rdb,rdbflags,rsi);
    FUNC0(fp);
    FUNC5(retval==C_OK);
    return retval;
}