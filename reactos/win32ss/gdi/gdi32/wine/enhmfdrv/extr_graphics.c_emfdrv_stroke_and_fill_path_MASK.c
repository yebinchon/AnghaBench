#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gdi_path {int dummy; } ;
typedef  int /*<<< orphan*/  emr ;
struct TYPE_4__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_3__ {int /*<<< orphan*/  rclBounds; TYPE_2__ emr; } ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  int /*<<< orphan*/  INT ;
typedef  TYPE_1__ EMRSTROKEANDFILLPATH ;
typedef  int /*<<< orphan*/  DC ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  empty_bounds ; 
 int /*<<< orphan*/  FUNC2 (struct gdi_path*) ; 
 struct gdi_path* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct gdi_path*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC7( PHYSDEV dev, INT type )
{
    DC *dc = FUNC5( dev );
    EMRSTROKEANDFILLPATH emr;
    struct gdi_path *path;
    POINT *points;
    BYTE *flags;

    emr.emr.iType = type;
    emr.emr.nSize = sizeof(emr);

    if ((path = FUNC3( dc, NULL )))
    {
        int count = FUNC4( path, &points, &flags );
        FUNC6( &emr.rclBounds, points, count, 0 );
        FUNC2( path );
    }
    else emr.rclBounds = empty_bounds;

    if (!FUNC1( dev, &emr.emr )) return FALSE;
    if (!path) return FALSE;
    FUNC0( dev, &emr.rclBounds );
    return TRUE;
}