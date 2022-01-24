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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_action_id_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ KEY_UNSET ; 
 scalar_t__ FUNC0 (void**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC3 (char*,char*,char**) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6 (vlc_object_t *obj, void **map,
                            const char *confname, vlc_action_id_t action)
{
    char *keys = FUNC4 (obj, confname);
    if (keys == NULL)
        return;

    for (char *buf, *key = FUNC3 (keys, "\t", &buf);
         key != NULL;
         key = FUNC3 (NULL, "\t", &buf))
    {
        uint32_t code = FUNC5 (key);
        if (code == KEY_UNSET)
        {
            FUNC2 (obj, "Key \"%s\" unrecognized", key);
            continue;
        }

        if (FUNC0 (map, code, action) == EEXIST)
            FUNC2 (obj, "Key \"%s\" bound to multiple actions", key);
    }
    FUNC1 (keys);
}