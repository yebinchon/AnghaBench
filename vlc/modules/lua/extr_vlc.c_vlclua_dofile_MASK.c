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
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_MULTRET ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,size_t,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC12( vlc_object_t *p_this, lua_State *L, const char *curi )
{
    char *uri = FUNC0( curi );
    if( !FUNC8( uri, "://" ) ) {
        int ret = FUNC2( L, uri );
        FUNC1( uri );
        return ret;
    }
    if( !FUNC7( uri, "file://", 7 ) ) {
        int ret = FUNC2( L, uri + 7 );
        FUNC1( uri );
        return ret;
    }
    stream_t *s = FUNC10( p_this, uri );
    if( !s )
    {
        FUNC1( uri );
        return 1;
    }
    int64_t i_size = FUNC6( s );
    char *p_buffer = ( i_size > 0 ) ? FUNC5( i_size ) : NULL;
    if( !p_buffer )
    {
        // FIXME: read the whole stream until we reach the end (if no size)
        FUNC9( s );
        FUNC1( uri );
        return 1;
    }
    int64_t i_read = FUNC11( s, p_buffer, (int) i_size );
    int i_ret = ( i_read == i_size ) ? 0 : 1;
    if( !i_ret )
        i_ret = FUNC3( L, p_buffer, (size_t) i_size, uri );
    if( !i_ret )
        i_ret = FUNC4( L, 0, LUA_MULTRET, 0 );
    FUNC9( s );
    FUNC1( p_buffer );
    FUNC1( uri );
    return i_ret;
}