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
struct TYPE_2__ {int /*<<< orphan*/  dbg_vlog; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  extfmt_default_dbg_vlog ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ funcs ; 
 char* FUNC4 (scalar_t__) ; 
 int nb_debug_options ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  rosfmt_default_dbg_vlog ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  winefmt_default_dbg_vlog ; 

__attribute__((used)) static void FUNC7(void)
{
    char *wine_debug;
    DWORD dwLength;
    /* GetEnvironmentVariableA will change LastError! */
    DWORD LastError = FUNC1();

    if (nb_debug_options != -1) return;  /* already initialized */
    nb_debug_options = 0;

    dwLength = FUNC0("DEBUGCHANNEL", NULL, 0);
    if (dwLength)
    {
        wine_debug = FUNC4(dwLength);
        if (wine_debug)
        {
            if (FUNC0("DEBUGCHANNEL", wine_debug, dwLength) < dwLength)
                FUNC5(wine_debug);
            FUNC3(wine_debug);
        }
    }

    dwLength = FUNC0("DEBUGFORMAT", NULL, 0);
    if (dwLength)
    {
        wine_debug = FUNC4(dwLength);
        if (wine_debug)
        {
            if (FUNC0("DEBUGFORMAT", wine_debug, dwLength) < dwLength)
            {
                if (FUNC6(wine_debug, "wine") == 0)
                {
                    funcs.dbg_vlog = winefmt_default_dbg_vlog;
                }
                else
                if (FUNC6(wine_debug, "extended") == 0 ||
                    FUNC6(wine_debug, "ext") == 0)
                {
                    funcs.dbg_vlog = extfmt_default_dbg_vlog;
                }
                else
                {
                    funcs.dbg_vlog = rosfmt_default_dbg_vlog;
                }
            }
            FUNC3(wine_debug);
        }
    }

    FUNC2(LastError);
}