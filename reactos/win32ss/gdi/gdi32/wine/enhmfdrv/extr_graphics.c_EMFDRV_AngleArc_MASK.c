#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  emr ;
struct TYPE_6__ {int nSize; int /*<<< orphan*/  iType; } ;
struct TYPE_4__ {void* y; void* x; } ;
struct TYPE_5__ {TYPE_3__ emr; void* eSweepAngle; void* eStartAngle; int /*<<< orphan*/  nRadius; TYPE_1__ ptlCenter; } ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  void* INT ;
typedef  void* FLOAT ;
typedef  TYPE_2__ EMRANGLEARC ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  EMR_ANGLEARC ; 

BOOL FUNC1( PHYSDEV dev, INT x, INT y, DWORD radius, FLOAT start, FLOAT sweep )
{
    EMRANGLEARC emr;

    emr.emr.iType   = EMR_ANGLEARC;
    emr.emr.nSize   = sizeof( emr );
    emr.ptlCenter.x = x;
    emr.ptlCenter.y = y;
    emr.nRadius     = radius;
    emr.eStartAngle = start;
    emr.eSweepAngle = sweep;

    return FUNC0( dev, &emr.emr );
}