#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {char** ppsz_keys; int /*<<< orphan*/ * global_map; int /*<<< orphan*/ * map; } ;
typedef  TYPE_1__ vlc_actions_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  libvlc_int_t ;
struct TYPE_7__ {TYPE_1__* actions; } ;
struct TYPE_6__ {char* psz; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ACTIONS_COUNT ; 
 int /*<<< orphan*/  KEY_MOUSEWHEELDOWN ; 
 int /*<<< orphan*/  KEY_MOUSEWHEELLEFT ; 
 int /*<<< orphan*/  KEY_MOUSEWHEELRIGHT ; 
 int /*<<< orphan*/  KEY_MOUSEWHEELUP ; 
 int /*<<< orphan*/  MAXACTION ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_VAR_INTEGER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 TYPE_2__* s_names2actions ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  vlc_key_to_action ; 

int FUNC14 (libvlc_int_t *libvlc)
{
    FUNC3(libvlc != NULL);

    vlc_object_t *obj = FUNC0(libvlc);
    vlc_actions_t *as = FUNC6 (sizeof (*as) + (1 + ACTIONS_COUNT)
                      * sizeof (*as->ppsz_keys));

    if (FUNC10(as == NULL))
        return VLC_ENOMEM;
    as->map = NULL;
    as->global_map = NULL;

    FUNC12 (obj, "key-pressed", VLC_VAR_INTEGER);
    FUNC12 (obj, "global-key-pressed", VLC_VAR_INTEGER);
    FUNC12 (obj, "key-action", VLC_VAR_INTEGER);

    /* Initialize from configuration */
    for (size_t i = 0; i < ACTIONS_COUNT; i++)
    {
#ifndef NDEBUG
        if (i > 0
         && FUNC9 (s_names2actions[i-1].psz, s_names2actions[i].psz) >= 0)
        {
            FUNC7 (libvlc, "key-%s and key-%s are not ordered properly",
                     s_names2actions[i-1].psz, s_names2actions[i].psz);
            FUNC1 ();
        }
#endif
        as->ppsz_keys[i] = s_names2actions[i].psz;

        char name[12 + MAXACTION];

        FUNC8 (name, sizeof (name), "global-key-%s", s_names2actions[i].psz);
        FUNC4 (obj, &as->map, name + 7, s_names2actions[i].id);
        FUNC4 (obj, &as->global_map, name, s_names2actions[i].id);
    }
    as->ppsz_keys[ACTIONS_COUNT] = NULL;

    /* Initialize mouse wheel events */
    FUNC2 (&as->map, KEY_MOUSEWHEELRIGHT, KEY_MOUSEWHEELLEFT,
                         FUNC13 (obj, "hotkeys-x-wheel-mode"));
    FUNC2 (&as->map, KEY_MOUSEWHEELUP, KEY_MOUSEWHEELDOWN,
                         FUNC13 (obj, "hotkeys-y-wheel-mode"));

    FUNC5(libvlc)->actions = as;
    FUNC11 (obj, "key-pressed", vlc_key_to_action, &as->map);
    FUNC11 (obj, "global-key-pressed", vlc_key_to_action,
                     &as->global_map);
    return VLC_SUCCESS;
}