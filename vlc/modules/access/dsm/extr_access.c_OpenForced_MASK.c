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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3( vlc_object_t *p_this )
{
    if( !FUNC2( p_this , "smb-force-v1" ) )
        return VLC_EGENERIC;

    FUNC1( p_this, "SMB 2/3 disabled by the user, using *unsafe* SMB 1" );
    return FUNC0( p_this );
}