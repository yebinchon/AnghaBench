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
struct TYPE_2__ {int currentline; } ;

/* Variables and functions */
 TYPE_1__ ldb ; 
 char* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(int lnum) {
    char *line = FUNC0(lnum);
    char *prefix;
    int bp = FUNC1(lnum);
    int current = ldb.currentline == lnum;

    if (current && bp)
        prefix = "->#";
    else if (current)
        prefix = "-> ";
    else if (bp)
        prefix = "  #";
    else
        prefix = "   ";
    sds thisline = FUNC3(FUNC4(),"%s%-3d %s", prefix, lnum, line);
    FUNC2(thisline);
}