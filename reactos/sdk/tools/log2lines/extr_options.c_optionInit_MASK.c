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
struct TYPE_2__ {int /*<<< orphan*/  buildrev; int /*<<< orphan*/  range; int /*<<< orphan*/  rev; } ;

/* Variables and functions */
 char const* CMD_7Z ; 
 int /*<<< orphan*/  DEF_RANGE ; 
 int /*<<< orphan*/  LINESIZE ; 
 int /*<<< orphan*/  SOURCES_ENV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opt_7z ; 
 int /*<<< orphan*/  opt_Pipe ; 
 int /*<<< orphan*/  opt_SourcesPath ; 
 int /*<<< orphan*/  opt_dir ; 
 int /*<<< orphan*/  opt_help ; 
 int /*<<< orphan*/  opt_logFile ; 
 char* opt_mod ; 
 int /*<<< orphan*/  opt_scanned ; 
 TYPE_1__ revinfo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(int argc, const char **argv)
{
    int i;
    char *s;

    opt_mod = "a";
    FUNC6(opt_dir, "");
    FUNC6(opt_logFile, "");
    FUNC6(opt_7z, CMD_7Z);
    FUNC6(opt_SourcesPath, "");
    if ((s = FUNC2(SOURCES_ENV)))
        FUNC6(opt_SourcesPath, s);
    revinfo.rev = FUNC0(NULL, 1);
    revinfo.range = DEF_RANGE;
    revinfo.buildrev = FUNC1(opt_dir);
    FUNC3(1, "Trunk build revision: %d\n", revinfo.buildrev);

    FUNC6(opt_scanned, "");

    //The user introduced "log2lines.exe" or "log2lines.exe /?"
    //Let's help the user
    if ((argc == 1) ||
        ((argc == 2) && (argv[1][0] == '/') && (argv[1][1] == '?')))
    {
        opt_help++;
        FUNC7(1);
        return -1;
    }

    for (i = 1; i < argc; i++)
    {

        if ((argv[i][0] == '-') && (i+1 < argc))
        {
            //Because these arguments can contain spaces we cant use getopt(), a known bug:
            switch (argv[i][1])
            {
            case 'd':
                FUNC6(opt_dir, argv[i+1]);
                break;
            case 'L':
                opt_mod = "w";
                //fall through
            case 'l':
                FUNC6(opt_logFile, argv[i+1]);
                break;
            case 'P':
                if (!opt_Pipe)
                    opt_Pipe = FUNC4(LINESIZE);
                FUNC6(opt_Pipe, argv[i+1]);
                break;
            case 'z':
                FUNC6(opt_7z, argv[i+1]);
                break;
            }
        }

        FUNC5(opt_scanned, argv[i]);
        FUNC5(opt_scanned, " ");
    }

    FUNC3(4,"opt_scanned=[%s]\n",opt_scanned);

    return 0;
}