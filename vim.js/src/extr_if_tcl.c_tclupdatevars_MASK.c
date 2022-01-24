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
struct TYPE_2__ {char* curbuf; char* curwin; int /*<<< orphan*/  interp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int VARNAME_SIZE ; 
 char* VAR_CURBUF ; 
 char* VAR_CURWIN ; 
 char* VAR_LBASE ; 
 char* VAR_RANGE1 ; 
 char* VAR_RANGE2 ; 
 char* VAR_RANGE3 ; 
 int /*<<< orphan*/  curbuf ; 
 int /*<<< orphan*/  curwin ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ tclinfo ; 

__attribute__((used)) static void
FUNC4()
{
    char varname[VARNAME_SIZE];	/* must be writeable */
    char *name;

    FUNC1(varname, VAR_RANGE1);
    FUNC0(tclinfo.interp, varname);
    FUNC1(varname, VAR_RANGE2);
    FUNC0(tclinfo.interp, varname);
    FUNC1(varname, VAR_RANGE3);
    FUNC0(tclinfo.interp, varname);

    FUNC1(varname, VAR_LBASE);
    FUNC0(tclinfo.interp, varname);

    name = FUNC2(tclinfo.interp, curbuf);
    FUNC1(tclinfo.curbuf, name);
    FUNC1(varname, VAR_CURBUF);
    FUNC0(tclinfo.interp, varname);

    name = FUNC3(tclinfo.interp, curwin);
    FUNC1(tclinfo.curwin, name);
    FUNC1(varname, VAR_CURWIN);
    FUNC0(tclinfo.interp, varname);
}