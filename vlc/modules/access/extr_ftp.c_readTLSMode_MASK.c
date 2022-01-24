#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_3__ {int /*<<< orphan*/ * p_creds; int /*<<< orphan*/  tlsmode; } ;
typedef  TYPE_1__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXPLICIT ; 
 int /*<<< orphan*/  IMPLICIT ; 
 int /*<<< orphan*/  NONE ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2( vlc_object_t *obj, access_sys_t *p_sys,
                        const char * psz_access )
{
    if ( !FUNC0( psz_access, "ftps", 4 ) )
        p_sys->tlsmode = IMPLICIT;
    else
    if ( !FUNC0( psz_access, "ftpes", 5 ) )
        p_sys->tlsmode = EXPLICIT;
    else
    {
        p_sys->p_creds = NULL;
        p_sys->tlsmode = NONE;
        return 0;
    }

    p_sys->p_creds = FUNC1( obj );
    return (p_sys->p_creds != NULL) ? 0 : -1;
}