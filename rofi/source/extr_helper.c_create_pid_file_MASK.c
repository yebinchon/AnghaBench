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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int LOCK_EX ; 
 int LOCK_NB ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int,...) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char*,int,char*,int) ; 
 scalar_t__ FUNC9 (int,char*,int) ; 

int FUNC10 ( const char *pidfile )
{
    if ( pidfile == NULL ) {
        return -1;
    }

    int fd = FUNC3 ( pidfile, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR );
    if ( fd < 0 ) {
        FUNC5 ( "Failed to create pid file: '%s'.", pidfile );
        return -1;
    }
    // Set it to close the File Descriptor on exit.
    int flags = FUNC0 ( fd, F_GETFD, NULL );
    flags = flags | FD_CLOEXEC;
    if ( FUNC0 ( fd, F_SETFD, flags, NULL ) < 0 ) {
        FUNC5 ( "Failed to set CLOEXEC on pidfile." );
        FUNC7 ( fd );
        return -1;
    }
    // Try to get exclusive write lock on FD
    int retv = FUNC1 ( fd, LOCK_EX | LOCK_NB );
    if ( retv != 0 ) {
        FUNC5 ( "Failed to set lock on pidfile: Rofi already running?" );
        FUNC5 ( "Got error: %d %s", retv, FUNC4 ( errno ) );
        FUNC7 ( fd );
        return -1;
    }
    if ( FUNC2 ( fd, (off_t) 0 ) == 0 ) {
        // Write pid, not needed, but for completeness sake.
        char    buffer[64];
        int     length = FUNC8 ( buffer, 64, "%i", FUNC6 () );
        ssize_t l      = 0;
        while ( l < length ) {
            l += FUNC9 ( fd, &buffer[l], length - l );
        }
    }
    return fd;
}