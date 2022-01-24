#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* host; char* user; } ;
struct TYPE_7__ {TYPE_1__* first; } ;
struct TYPE_6__ {char* line; struct TYPE_6__* next; } ;
typedef  TYPE_1__* LinePtr ;
typedef  TYPE_2__* LineListPtr ;
typedef  TYPE_3__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const FTPCIPtr cip, LineListPtr pwPrompt, char *pass, size_t dsize)
{
	LinePtr lp;

	(void) FUNC1("\nPassword requested by %s for user \"%s\".\n\n",
		cip->host,
		cip->user
		);

	for (lp = pwPrompt->first; lp != NULL; lp = lp->next) {
		(void) FUNC1("    %s\n", lp->line);
	}
	(void) FUNC1("\n");
	(void) FUNC0("Password: ", pass, (int) dsize);
}