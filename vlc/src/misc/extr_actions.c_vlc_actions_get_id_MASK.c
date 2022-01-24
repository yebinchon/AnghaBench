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
typedef  int /*<<< orphan*/  vlc_action_id_t ;
struct name2action {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIONID_NONE ; 
 int /*<<< orphan*/  ACTIONS_COUNT ; 
 int /*<<< orphan*/  actcmp ; 
 struct name2action* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_names2actions ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

vlc_action_id_t
FUNC2 (const char *name)
{
    const struct name2action *act;

    if (FUNC1 (name, "key-", 4))
        return ACTIONID_NONE;
    name += 4;

    act = FUNC0(name, s_names2actions, ACTIONS_COUNT, sizeof(*act), actcmp);
    return (act != NULL) ? act->id : ACTIONID_NONE;
}