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
struct TYPE_4__ {int rev; int buildrev; scalar_t__ opt_verbose; } ;
struct TYPE_3__ {int /*<<< orphan*/  revconflicts; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINESIZE ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int,...) ; 
 scalar_t__ opt_Revision_check ; 
 int /*<<< orphan*/  opt_SourcesPath ; 
 TYPE_2__ revinfo ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ summ ; 

__attribute__((used)) static void
FUNC4(FILE *outFile, char *fileName, int showfile)
{
    int rev = 0;
    char s[LINESIZE];

    FUNC3(s, opt_SourcesPath);
    FUNC2(s, fileName);
    rev = FUNC0(s, 1);
    if (!showfile)
        s[0] = '\0';
    if (revinfo.opt_verbose)
        FUNC1(outFile, "| R--- %s Last Changed Rev: %d\n", s, rev);

    if (rev && opt_Revision_check)
    {
        if (revinfo.rev < revinfo.buildrev)
        {
            summ.revconflicts++;
            FUNC1(outFile, "| R--- Conflict %s: source tree(%d) < build(%d)\n", s, rev, revinfo.buildrev);
        }
        else if (rev > revinfo.buildrev)
        {
            summ.revconflicts++;
            FUNC1(outFile, "| R--- Conflict %s: file(%d) > build(%d)\n", s, rev, revinfo.buildrev);
        }
    }
}