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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(lua_State *L, vlc_object_t *p_obj,
                                  int (*release)(lua_State *))
{
    vlc_object_t **udata =
        (vlc_object_t **)FUNC1(L, sizeof (vlc_object_t *));

    *udata = p_obj;

    if (FUNC0(L, "vlc_object"))
    {
        /* Hide the metatable */
        FUNC3(L, "none of your business");
        FUNC4(L, -2, "__metatable");
        /* Set the garbage collector if needed */
        if (release != NULL)
        {
            FUNC2(L, release);
            FUNC4(L, -2, "__gc");
        }
    }
    FUNC5(L, -2);
    return 1;
}