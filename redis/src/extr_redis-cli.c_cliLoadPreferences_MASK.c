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
typedef  int /*<<< orphan*/ * sds ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  REDIS_CLI_RCFILE_DEFAULT ; 
 int /*<<< orphan*/  REDIS_CLI_RCFILE_ENV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ ** FUNC7 (char*,int*) ; 

void FUNC8(void) {
    sds rcfile = FUNC4(REDIS_CLI_RCFILE_ENV,REDIS_CLI_RCFILE_DEFAULT);
    if (rcfile == NULL) return;
    FILE *fp = FUNC3(rcfile,"r");
    char buf[1024];

    if (fp) {
        while(FUNC2(buf,sizeof(buf),fp) != NULL) {
            sds *argv;
            int argc;

            argv = FUNC7(buf,&argc);
            if (argc > 0) FUNC0(argv,argc,0);
            FUNC6(argv,argc);
        }
        FUNC1(fp);
    }
    FUNC5(rcfile);
}