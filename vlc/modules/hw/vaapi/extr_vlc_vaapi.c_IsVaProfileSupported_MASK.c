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
typedef  scalar_t__ VAStatus ;
typedef  scalar_t__ VAProfile ;
typedef  int /*<<< orphan*/  VADisplay ;

/* Variables and functions */
 scalar_t__ VAProfileNone ; 
 scalar_t__ VA_STATUS_SUCCESS ; 
 scalar_t__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 

__attribute__((used)) static bool
FUNC4(VADisplay dpy, VAProfile i_profile)
{
    /* Check if the selected profile is supported */
    if (i_profile == VAProfileNone)
        return true;
    int i_profiles_nb = FUNC2(dpy);
    if (i_profiles_nb < 0)
        return false;
    VAProfile *p_profiles_list = FUNC0(i_profiles_nb, sizeof(VAProfile));
    if (!p_profiles_list)
        return false;

    bool b_supported_profile = false;
    VAStatus status =
        FUNC3(dpy, p_profiles_list, &i_profiles_nb);
    if (status != VA_STATUS_SUCCESS)
        goto error;

    for (int i = 0; i < i_profiles_nb; i++)
    {
        if (p_profiles_list[i] == i_profile)
        {
            b_supported_profile = true;
            break;
        }
    }

error:
    FUNC1(p_profiles_list);
    return b_supported_profile;
}