#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  emr ;
struct TYPE_15__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_12__ {void* cy; void* cx; } ;
struct TYPE_14__ {TYPE_9__ emr; TYPE_2__ szlExtent; } ;
struct TYPE_13__ {TYPE_1__* funcs; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* pSetWindowExtEx ) (TYPE_3__*,void*,void*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  SIZE ;
typedef  TYPE_3__* PHYSDEV ;
typedef  void* INT ;
typedef  TYPE_4__ EMRSETWINDOWEXTEX ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_9__*) ; 
 int /*<<< orphan*/  EMR_SETWINDOWEXTEX ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_3__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pSetWindowExtEx ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,void*,void*,int /*<<< orphan*/ *) ; 

BOOL FUNC3( PHYSDEV dev, INT cx, INT cy, SIZE *size )
{
    PHYSDEV next = FUNC1( dev, pSetWindowExtEx );
    EMRSETWINDOWEXTEX emr;

    emr.emr.iType = EMR_SETWINDOWEXTEX;
    emr.emr.nSize = sizeof(emr);
    emr.szlExtent.cx = cx;
    emr.szlExtent.cy = cy;

    if (!FUNC0( dev, &emr.emr )) return FALSE;
    return next->funcs->pSetWindowExtEx( next, cx, cy, size );
}