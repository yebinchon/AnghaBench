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
struct deint_mode {char* name; } ;
typedef  int /*<<< orphan*/  filter_t ;
typedef  int /*<<< orphan*/  VAProcFilterCapDeinterlacing ;

/* Variables and functions */
 unsigned int FUNC0 (struct deint_mode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,struct deint_mode*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 struct deint_mode* deint_modes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static inline int
FUNC6(filter_t * filter, char const * deint_mode,
                        struct deint_mode * p_deint_mode,
                        VAProcFilterCapDeinterlacing const caps[],
                        unsigned int num_caps)
{
    bool fallback = false;
    if (deint_mode && FUNC5(deint_mode, "auto"))
    {
        for (unsigned int i = 0; i < FUNC0(deint_modes); ++i)
        {
            if (!FUNC5(deint_mode, deint_modes[i].name))
            {
                if (FUNC1(filter, caps, num_caps,
                                                deint_modes + i))
                {
                    *p_deint_mode = deint_modes[i];
                    FUNC2(filter, "using %s deinterlace method",
                            deint_modes[i].name);
                    return VLC_SUCCESS;
                }
            }
        }
        fallback = true;
    }

    for (unsigned int i = 0; i < FUNC0(deint_modes); ++i)
        if (FUNC1(filter, caps, num_caps,
                                        deint_modes + i))
        {
            *p_deint_mode = deint_modes[i];
            if (fallback)
                FUNC4(filter, "%s algorithm not available, falling back to "
                         "%s algorithm", deint_mode, deint_modes[i].name);
            else
                FUNC2(filter, "using %s deinterlace method",
                        deint_modes[i].name);
            return VLC_SUCCESS;
        }

    /* We shouldn't be able to reach this, 'cause if there is no deinterlacing
       algorithm available, then the driver would have told us before the
       deinterlace filtering is not supported at all. */

    FUNC3(filter, "no algorithm available");
    return VLC_EGENERIC;
}