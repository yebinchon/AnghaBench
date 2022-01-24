#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  file_sizes; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FILE_COUNT ; 
 char* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*,...) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    char *psz_path = FUNC1( p_access, FILE_COUNT );
    if( !psz_path )
        return false;

    struct stat st;
    if( FUNC5( psz_path, &st ) )
    {
        FUNC4( p_access, "could not stat %s: %s", psz_path,
                 FUNC6(errno) );
        FUNC3( psz_path );
        return false;
    }
    if( !FUNC2( st.st_mode ) )
    {
        FUNC4( p_access, "%s is not a regular file", psz_path );
        FUNC3( psz_path );
        return false;
    }
    FUNC4( p_access, "%s exists", psz_path );
    FUNC3( psz_path );

    FUNC0( p_sys->file_sizes, st.st_size );
    p_sys->size += st.st_size;

    return true;
}