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
typedef  int /*<<< orphan*/  config_chain_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char**,int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__* ppsz_string ; 

__attribute__((used)) static void FUNC5()
{
    for( int i = 0; ppsz_string[i]; i++ )
    {
        char *psz_module;
        config_chain_t *p_cfg;
        char *psz_next = FUNC1( &psz_module, &p_cfg, ppsz_string[i] );

        config_chain_t *p_cfg_copy = FUNC3( p_cfg );
        FUNC0(p_cfg, p_cfg_copy);

        FUNC2( p_cfg_copy );
        FUNC2( p_cfg );
        FUNC4( psz_next );
        FUNC4( psz_module );
    }
}