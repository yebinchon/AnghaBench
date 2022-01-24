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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC3( lua_State *L )
{
    xml_reader_t *p_reader = *(xml_reader_t**)FUNC0( L, 1, "xml_reader" );
    const char *psz_value;
    const char *psz_name = FUNC2( p_reader, &psz_value );
    if( !psz_name )
        return 0;

    FUNC1( L, psz_name );
    FUNC1( L, psz_value );
    return 2;
}