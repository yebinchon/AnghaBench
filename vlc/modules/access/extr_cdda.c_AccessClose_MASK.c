#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_meta_t ;
struct TYPE_3__ {int cdtextc; int /*<<< orphan*/  p_toc; scalar_t__ mbrecord; int /*<<< orphan*/ * cddb; int /*<<< orphan*/ ** cdtextv; } ;
typedef  TYPE_1__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(access_sys_t *sys)
{
    for (int i = 0; i < sys->cdtextc; i++)
    {
        vlc_meta_t *meta = sys->cdtextv[i];
        if (meta != NULL)
            FUNC4(meta);
    }
    FUNC1(sys->cdtextv);

#ifdef HAVE_LIBCDDB
    if (sys->cddb != NULL)
        cddb_disc_destroy(sys->cddb);
#endif
    if(sys->mbrecord)
        FUNC2(sys->mbrecord);
    FUNC3(sys->p_toc);
}