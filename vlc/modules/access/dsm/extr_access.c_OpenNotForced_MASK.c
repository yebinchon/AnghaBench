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
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2( vlc_object_t *p_this )
{
    if( FUNC1( p_this , "smb-force-v1" ) )
        return VLC_EGENERIC; /* OpenForced should have breen probed first */

    return FUNC0( p_this );
}