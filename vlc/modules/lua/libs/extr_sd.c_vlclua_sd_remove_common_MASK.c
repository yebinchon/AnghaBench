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
typedef  int /*<<< orphan*/  services_discovery_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( lua_State *L, input_item_t **pp_item )
{
    services_discovery_t *p_sd = (services_discovery_t *)FUNC3( L );

    if (pp_item == NULL)
        return FUNC1( L, "expected item" );

    input_item_t *p_item = *pp_item;
    if (*pp_item == NULL)
        return FUNC1( L, "already removed item" );

    FUNC2( p_sd, p_item );
    FUNC0( p_item );
    /* Make sure we won't try to remove it again */
    *pp_item = NULL;
    return 1;
}