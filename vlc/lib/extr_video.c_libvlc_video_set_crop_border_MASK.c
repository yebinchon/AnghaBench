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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

void FUNC2(libvlc_media_player_t *mp,
                                  unsigned left, unsigned right,
                                  unsigned top, unsigned bottom)
{
    char geometry[4 * (3 * sizeof (unsigned) + 1)];

    FUNC1(geometry, "%u+%u+%u+%u", left, top, right, bottom);
    FUNC0(mp, geometry);
}