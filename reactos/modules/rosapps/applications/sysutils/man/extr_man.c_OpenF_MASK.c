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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int MAXLINE ; 
 int OpenFlag ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * manfile ; 
 int /*<<< orphan*/  manpath ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

int
FUNC6(char* name)
{
    int retval=0;
    char *manpath_local=(char*)FUNC3(sizeof(char)*MAXLINE);

    FUNC5(manpath_local, manpath); //save mandir value

    if((manfile=FUNC1((FUNC4(manpath_local,name)),"r"))!=NULL)
     {
      OpenFlag=1;
      FUNC0();
     }
    else
     retval=-1;

    FUNC2(manpath_local);
    return retval;
}