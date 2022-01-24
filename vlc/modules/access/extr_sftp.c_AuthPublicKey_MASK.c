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
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_7__ {int /*<<< orphan*/  ssh_session; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC5( stream_t *p_access, const char *psz_home, const char *psz_username )
{
    access_sys_t* p_sys = p_access->p_sys;
    int i_result = VLC_EGENERIC;
    char *psz_keyfile1 = NULL;
    char *psz_keyfile2 = NULL;

    if( !psz_username || !psz_username[0] )
        return i_result;

    if( FUNC0( &psz_keyfile1, "%s/.ssh/id_rsa.pub", psz_home ) == -1 ||
        FUNC0( &psz_keyfile2, "%s/.ssh/id_rsa",     psz_home ) == -1 )
        goto bailout;

    if( FUNC2( p_sys->ssh_session, psz_username, psz_keyfile1, psz_keyfile2, NULL ) )
    {
        FUNC3( p_access, "Public key authentication failed" );
        goto bailout;
    }

    FUNC4( p_access, "Public key authentication succeeded" );
    i_result = VLC_SUCCESS;

 bailout:
    FUNC1( psz_keyfile1 );
    FUNC1( psz_keyfile2 );
    return i_result;
}