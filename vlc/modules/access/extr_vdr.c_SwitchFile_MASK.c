#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_9__ {int fd; unsigned int i_current_file; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 unsigned int FILE_COUNT ; 
 char* FUNC0 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC13( stream_t *p_access, unsigned i_file )
{
    access_sys_t *p_sys = p_access->p_sys;

    /* requested file already open? */
    if( p_sys->fd != -1 && p_sys->i_current_file == i_file )
        return true;

    /* close old file */
    if( p_sys->fd != -1 )
    {
        FUNC8( p_sys->fd );
        p_sys->fd = -1;
    }

    /* switch */
    if( i_file >= FILE_COUNT )
        return false;
    p_sys->i_current_file = i_file;

    /* open new file */
    char *psz_path = FUNC0( p_access, i_file );
    if( !psz_path )
        return false;
    p_sys->fd = FUNC10( psz_path, O_RDONLY );

    if( p_sys->fd == -1 )
    {
        FUNC7( p_access, "Failed to open %s: %s", psz_path,
                 FUNC12(errno) );
        goto error;
    }

    /* cannot handle anything except normal files */
    struct stat st;
    if( FUNC5( p_sys->fd, &st ) || !FUNC2( st.st_mode ) )
    {
        FUNC7( p_access, "%s is not a regular file", psz_path );
        goto error;
    }

    FUNC1( p_sys->fd );

    FUNC6( p_access, "opened %s", psz_path );
    FUNC4( psz_path );
    return true;

error:
    FUNC9 (p_access, FUNC3("File reading failed"), FUNC3("VLC could not"
        " open the file \"%s\" (%s)."), psz_path, FUNC11(errno) );
    if( p_sys->fd != -1 )
    {
        FUNC8( p_sys->fd );
        p_sys->fd = -1;
    }
    FUNC4( psz_path );
    return false;
}