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
struct vlc_player_program {int group_id; int selected; int scrambled; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlc_player_program*) ; 
 struct vlc_player_program* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char const*) ; 

struct vlc_player_program *
FUNC3(int id, const char *name)
{
    struct vlc_player_program *prgm = FUNC1(sizeof(*prgm));
    if (!prgm)
        return NULL;
    prgm->name = FUNC2(id, name);
    if (!prgm->name)
    {
        FUNC0(prgm);
        return NULL;
    }
    prgm->group_id = id;
    prgm->selected = prgm->scrambled = false;

    return prgm;
}