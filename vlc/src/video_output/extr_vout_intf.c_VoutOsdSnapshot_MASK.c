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
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  int /*<<< orphan*/  picture_t ;

/* Variables and functions */
 int /*<<< orphan*/  VOUT_SPU_CHANNEL_OSD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void FUNC5( vout_thread_t *p_vout, picture_t *p_pic, const char *psz_filename )
{
    FUNC1( p_vout, "snapshot taken (%s)", psz_filename );
    FUNC4( p_vout, VOUT_SPU_CHANNEL_OSD, "%s", psz_filename );

    if( FUNC3( p_vout, "snapshot-preview" ) )
    {
        if( FUNC0( p_vout, p_pic ) )
            FUNC2( p_vout, "Failed to display snapshot" );
    }
}