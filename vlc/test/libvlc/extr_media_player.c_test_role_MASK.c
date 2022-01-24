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
typedef  int /*<<< orphan*/  libvlc_media_player_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int libvlc_role_Last ; 
 int libvlc_role_Video ; 

__attribute__((used)) static void FUNC3(libvlc_media_player_t *mp)
{
    int role;

    /* Test default value */
    FUNC0(FUNC1(mp) == libvlc_role_Video);

    for (role = 0; FUNC2(mp, role) == 0; role++)
        FUNC0(FUNC1(mp) == role);

    FUNC0(role > libvlc_role_Last);
}