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
struct stat {int /*<<< orphan*/  st_ctime; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_atime; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC12 (char const*,struct stat*) ; 

__attribute__((used)) static int FUNC13( lua_State *L )
{
    const char *psz_path = FUNC7( L, 1 );
    struct stat s;
    if( FUNC12( psz_path, &s ) )
        return 0;
        //return luaL_error( L, "Couldn't stat %s.", psz_path );
    FUNC8( L );
    if( FUNC5( s.st_mode ) )
        FUNC10( L, "file" );
    else if( FUNC2( s.st_mode ) )
        FUNC10( L, "dir" );
#ifdef S_ISCHR
    else if( S_ISCHR( s.st_mode ) )
        lua_pushliteral( L, "character device" );
#endif
#ifdef S_ISBLK
    else if( S_ISBLK( s.st_mode ) )
        lua_pushliteral( L, "block device" );
#endif
#ifdef S_ISFIFO
    else if( S_ISFIFO( s.st_mode ) )
        lua_pushliteral( L, "fifo" );
#endif
#ifdef S_ISLNK
    else if( S_ISLNK( s.st_mode ) )
        lua_pushliteral( L, "symbolic link" );
#endif
#ifdef S_ISSOCK
    else if( S_ISSOCK( s.st_mode ) )
        lua_pushliteral( L, "socket" );
#endif
    else
        FUNC10( L, "unknown" );
    FUNC11( L, -2, "type" );
    FUNC9( L, s.st_mode );
    FUNC11( L, -2, "mode" );
    FUNC9( L, s.st_uid );
    FUNC11( L, -2, "uid" );
    FUNC9( L, s.st_gid );
    FUNC11( L, -2, "gid" );
    FUNC9( L, s.st_size );
    FUNC11( L, -2, "size" );
    FUNC9( L, s.st_atime );
    FUNC11( L, -2, "access_time" );
    FUNC9( L, s.st_mtime );
    FUNC11( L, -2, "modification_time" );
    FUNC9( L, s.st_ctime );
    FUNC11( L, -2, "creation_time" );
    return 1;
}