#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {int /*<<< orphan*/  p_sectors; } ;
struct TYPE_5__ {int i_vcdimage_handle; TYPE_1__ toc; } ;
typedef  TYPE_2__ vcddev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3( vlc_object_t * p_this, vcddev_t *p_vcddev )
{
    FUNC0( p_this );
    if( p_vcddev->i_vcdimage_handle != -1 )
        FUNC2( p_vcddev->i_vcdimage_handle );
    else
        return;

    FUNC1( p_vcddev->toc.p_sectors );
}