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
struct vlc_player_program {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int,char const*) ; 

int
FUNC2(struct vlc_player_program *prgm, int id,
                          const char *name)
{
    FUNC0((char *)prgm->name);
    prgm->name = FUNC1(id, name);
    return prgm->name != NULL ? VLC_SUCCESS : VLC_ENOMEM;
}