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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

void FUNC3(libvlc_media_player_t *mp,
                                  unsigned x, unsigned y,
                                  unsigned width, unsigned height)
{
    char geometry[4 * (3 * sizeof (unsigned) + 1)];

    FUNC0(width != 0 && height != 0);
    FUNC2(geometry, "%ux%u+%u+%u", x, y, width, height);
    FUNC1(mp, geometry);
}