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
typedef  int /*<<< orphan*/  vlc_probe_t ;
struct vlc_rd_probe {int /*<<< orphan*/ * psz_longname; int /*<<< orphan*/ * psz_name; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  names ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int VLC_PROBE_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct vlc_rd_probe*,int) ; 

int
FUNC4(vlc_probe_t *probe, const char *psz_name,
                 const char *psz_longname)
{
    struct vlc_rd_probe names = { FUNC1(psz_name), FUNC1(psz_longname) };

    if (FUNC2(names.psz_name == NULL || names.psz_longname == NULL
                 || FUNC3(probe, &names, sizeof(names))))
    {
        FUNC0(names.psz_name);
        FUNC0(names.psz_longname);
        return VLC_ENOMEM;
    }
    return VLC_PROBE_CONTINUE;
}