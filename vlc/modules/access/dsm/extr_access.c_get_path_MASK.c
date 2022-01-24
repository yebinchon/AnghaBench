#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_6__ {int /*<<< orphan*/ * psz_path; } ;
struct TYPE_8__ {char* psz_fullpath; char* psz_share; char* psz_path; TYPE_1__ url; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;
    char *iter;

    if( p_sys->url.psz_path == NULL )
        return false;

    p_sys->psz_fullpath = FUNC4( p_sys->url.psz_path );
    if( p_sys->psz_fullpath == NULL )
        return false;

    FUNC0( p_sys->psz_fullpath );

    /* Is path longer than just "/" ? */
    if( FUNC3( p_sys->psz_fullpath ) > 1 )
    {
        iter = p_sys->psz_fullpath;
        while( *iter == '\\' ) iter++; /* Handle smb://Host/////Share/ */

        p_sys->psz_share = iter;
    }
    else
    {
        FUNC1( p_access, "no share, nor file path provided, will switch to browser");
        return false;
    }

    iter = FUNC2( p_sys->psz_share, '\\' );
    if( iter == NULL || FUNC3(iter + 1) == 0 )
    {
        if( iter != NULL ) /* Remove the trailing \ */
            *iter = '\0';
        p_sys->psz_path = "";

        FUNC1( p_access, "no file path provided, will switch to browser ");
        return true;
    }

    p_sys->psz_path = iter + 1; /* Skip the first \ */
    *iter = '\0';

    return true;
}