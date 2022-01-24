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
struct TYPE_5__ {int /*<<< orphan*/  p_libvlc_instance; int /*<<< orphan*/  catname_to_submedialist; int /*<<< orphan*/  p_mlist; int /*<<< orphan*/ * p_sd; } ;
typedef  TYPE_1__ libvlc_media_discoverer_t ;

/* Variables and functions */
 int /*<<< orphan*/  MediaListDictValueRelease ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5( libvlc_media_discoverer_t * p_mdis )
{
    if( p_mdis->p_sd != NULL )
        FUNC1( p_mdis );

    FUNC2( p_mdis->p_mlist );

    FUNC4( &p_mdis->catname_to_submedialist,
        MediaListDictValueRelease, NULL );

    FUNC3( p_mdis->p_libvlc_instance );

    FUNC0( p_mdis );
}