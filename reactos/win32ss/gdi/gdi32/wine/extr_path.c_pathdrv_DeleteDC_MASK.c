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
struct path_physdev {int dummy; } ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct path_physdev*) ; 
 int /*<<< orphan*/  TRUE ; 
 struct path_physdev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC4( PHYSDEV dev )
{
    struct path_physdev *physdev = FUNC3( dev );
    FUNC0("pathdrv_DeleteDC dev %p\n",dev);
    FUNC2( FUNC1(), 0, physdev );
    return TRUE;
}