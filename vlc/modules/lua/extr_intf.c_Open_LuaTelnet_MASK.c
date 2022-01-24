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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 

int FUNC5( vlc_object_t *p_this )
{
    char *pw = FUNC4( p_this, "telnet-password" );
    if( pw == NULL )
    {
        FUNC2( p_this, "password not configured" );
        FUNC3( p_this, "Please specify the password in the preferences." );
        return VLC_EGENERIC;
    }
    FUNC1( pw );
    return FUNC0( p_this, "telnet" );
}