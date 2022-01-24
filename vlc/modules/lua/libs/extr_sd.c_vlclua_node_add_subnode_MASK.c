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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( lua_State *L )
{
    services_discovery_t *p_sd = (services_discovery_t *)FUNC1( L );
    input_item_t **pp_node = (input_item_t **)FUNC0( L, 1, "node" );

    return FUNC2( p_sd, pp_node,
                                     FUNC3( p_sd, L ) );
}