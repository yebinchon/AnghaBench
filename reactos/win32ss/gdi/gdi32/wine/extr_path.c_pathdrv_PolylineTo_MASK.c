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
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC1( PHYSDEV dev, const POINT *pts, INT count )
{
//    struct path_physdev *physdev = get_path_physdev( dev );
//    DC *dc = get_physdev_dc( dev );
    FUNC0("pathdrv_PolyLineTo dev %p\n",dev);
    return TRUE;
}