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
typedef  int /*<<< orphan*/  xml_reader_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC4( lua_State *L )
{
    xml_reader_t *p_reader = *(xml_reader_t**)FUNC0( L, 1, "xml_reader" );
    const char *psz_name;
    int i_type = FUNC3( p_reader, &psz_name );
    if( i_type <= 0 )
    {
        FUNC1( L, 0 );
        return 1;
    }

    FUNC1( L, i_type );
    FUNC2( L, psz_name );
    return 2;
}