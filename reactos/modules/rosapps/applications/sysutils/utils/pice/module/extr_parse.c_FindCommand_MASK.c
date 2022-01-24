#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_4__ {char* Cmd; scalar_t__ CommandGroup; int /*<<< orphan*/  Help; } ;
struct TYPE_3__ {scalar_t__ cy; scalar_t__ y; } ;
typedef  char* LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_CAPTION ; 
 int /*<<< orphan*/  COLOR_TEXT ; 
 scalar_t__ COMMAND_GROUP_HELP_ONLY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_2__* CmdTable ; 
 size_t OUTPUT_WINDOW ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* tempCmd ; 
 TYPE_1__* wWindow ; 

LPSTR FUNC9(LPSTR p)
{
    ULONG i,j,k=0;
    LPSTR result=NULL;

	tempCmd[0]=0;
	for(j=0,i=0;CmdTable[i].Cmd!=NULL;i++)
	{
		if(FUNC4(CmdTable[i].Cmd,p,FUNC3(p)) == 0 &&
           CmdTable[i].CommandGroup != COMMAND_GROUP_HELP_ONLY)
		{
			if(FUNC3(tempCmd))
				FUNC2(tempCmd,", ");
			FUNC2(tempCmd,CmdTable[i].Cmd);
			j++;
			k=i;
		}
	}
	if(FUNC3(tempCmd))
	{
		FUNC7(COLOR_CAPTION);
		FUNC8(COLOR_TEXT);
		FUNC0(wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
		FUNC5(tempCmd,1,wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
		if(j==1)
		{
			FUNC1(tempCmd,"%s",CmdTable[k].Help);
			FUNC5(tempCmd,40,wWindow[OUTPUT_WINDOW].y+wWindow[OUTPUT_WINDOW].cy);
			result=CmdTable[k].Cmd;
		}
        FUNC6();
	}
	return result;
}