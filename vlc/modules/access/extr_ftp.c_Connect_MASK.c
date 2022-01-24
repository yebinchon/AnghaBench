#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_10__ {scalar_t__ psz_path; } ;
struct TYPE_9__ {scalar_t__ b_unicode; } ;
struct TYPE_11__ {TYPE_2__ url; TYPE_1__ features; int /*<<< orphan*/  sz_epsv_ip; int /*<<< orphan*/  cmd; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11( vlc_object_t *p_access, access_sys_t *p_sys, const char *path )
{
    if( FUNC2( p_access, p_sys, path ) < 0 )
        return -1;

    /* Extended passive mode */
    if( FUNC5( p_access, p_sys, "EPSV ALL" ) < 0 )
    {
        FUNC6( p_access, "cannot request extended passive mode" );
        goto error;
    }

    if( FUNC4( p_access, p_sys, NULL, NULL ) == 2 )
    {
        int fd = FUNC10(p_sys->cmd);
        if( FUNC8( fd, p_sys->sz_epsv_ip, NULL ) )
            goto error;
    }
    else
    {
        /* If ESPV ALL fails, we fallback to PASV.
         * We have to restart the connection in case there is a NAT that
         * understands EPSV ALL in the way, and hence won't allow PASV on
         * the initial connection.
         */
        FUNC7( p_access, "FTP Extended passive mode disabled" );
        FUNC3( p_sys );

        if( FUNC2( p_access, p_sys, path ) )
            goto error;
    }

    if( p_sys->url.psz_path &&
        (p_sys->features.b_unicode ? IsUTF8 : IsASCII)(p_sys->url.psz_path) == NULL )
    {
        FUNC6( p_access, "unsupported path: \"%s\"", p_sys->url.psz_path );
        goto error;
    }

    /* check binary mode support */
    if( FUNC5( p_access, p_sys, "TYPE I" ) < 0 ||
        FUNC4( p_access, p_sys, NULL, NULL ) != 2 )
    {
        FUNC6( p_access, "cannot set binary transfer mode" );
        goto error;
    }

    return 0;

error:
    FUNC3( p_sys );
    return -1;
}