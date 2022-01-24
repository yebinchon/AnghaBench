#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ access_sys_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 ( vlc_object_t *p_access, access_sys_t *p_sys )
{
    int ret = VLC_SUCCESS;

    if( FUNC1( p_access, p_sys, "ABOR" ) < 0 )
    {
        FUNC2( p_access, "cannot abort file" );
        ret = VLC_EGENERIC;
    }

    if( p_sys->data != NULL )
    {
        FUNC3( p_sys->data );
        p_sys->data = NULL;

        if( ret == VLC_SUCCESS )
            /* Read the final response from RETR/STOR, i.e. 426 or 226 */
            FUNC0( p_access, p_sys, NULL, NULL );
    }

    if( ret == VLC_SUCCESS )
        /* Read the response from ABOR, i.e. 226 or 225 */
        FUNC0( p_access, p_sys, NULL, NULL );

    return ret;
}