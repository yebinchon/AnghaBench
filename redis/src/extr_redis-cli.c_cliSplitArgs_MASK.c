#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_2__ {scalar_t__ eval_ldb; } ;

/* Variables and functions */
 TYPE_1__ config ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int*) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static sds *FUNC5(char *line, int *argc) {
    if (config.eval_ldb && (FUNC4(line,"eval ") == line ||
                            FUNC4(line,"e ") == line))
    {
        sds *argv = FUNC0(sizeof(sds)*2);
        *argc = 2;
        int len = FUNC3(line);
        int elen = line[1] == ' ' ? 2 : 5; /* "e " or "eval "? */
        argv[0] = FUNC1(line,elen-1);
        argv[1] = FUNC1(line+elen,len-elen);
        return argv;
    } else {
        return FUNC2(line,argc);
    }
}