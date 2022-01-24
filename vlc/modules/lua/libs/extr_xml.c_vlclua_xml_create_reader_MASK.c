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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlclua_xml_reader_delete ; 
 int /*<<< orphan*/  vlclua_xml_reader_reg ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11( lua_State *L )
{
    vlc_object_t *obj = FUNC9( L );
    stream_t *p_stream = *(stream_t **)FUNC0( L, 2, "stream" );

    xml_reader_t *p_reader = FUNC10( obj, p_stream );
    if( !p_reader )
        return FUNC1( L, "XML reader creation failed." );

    xml_reader_t **pp_reader = FUNC5( L, sizeof( xml_reader_t * ) );
    *pp_reader = p_reader;

    if( FUNC2( L, "xml_reader" ) )
    {
        FUNC4( L );
        FUNC3( L, NULL, vlclua_xml_reader_reg );
        FUNC7( L, -2, "__index" );
        FUNC6( L, vlclua_xml_reader_delete );
        FUNC7( L, -2, "__gc" );
    }

    FUNC8( L, -2 );
    return 1;
}