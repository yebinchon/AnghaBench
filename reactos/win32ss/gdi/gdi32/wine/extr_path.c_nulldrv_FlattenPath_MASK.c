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
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC1( PHYSDEV dev )
{
/*    DC *dc = get_nulldrv_dc( dev );
    struct gdi_path *path; */
    FUNC0("nulldrv_FlattenPath dev %p\n",dev);
/*    if (!dc->path)
    {
        SetLastError( ERROR_CAN_NOT_COMPLETE );
        return FALSE;
    }
    if (!(path = PATH_FlattenPath( dc->path ))) return FALSE;
    free_gdi_path( dc->path );
    dc->path = path;*/
    return TRUE;
}