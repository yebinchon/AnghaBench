#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  yMax; int /*<<< orphan*/  yMin; int /*<<< orphan*/  xMax; int /*<<< orphan*/  xMin; } ;
struct TYPE_12__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_11__ {TYPE_2__ last; TYPE_4__ bbox; } ;
typedef  TYPE_1__ TBBox_Rec ;
typedef  TYPE_2__ FT_Vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_4__) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_4__) ; 

__attribute__((used)) static int
  FUNC3( FT_Vector*  control1,
                 FT_Vector*  control2,
                 FT_Vector*  to,
                 TBBox_Rec*  user )
  {
    /* We don't need to check `to' since it is always an on-point,    */
    /* thus within the bbox.  Only segments with an off-point outside */
    /* the bbox can possibly reach new extreme values.                */

    if ( FUNC1( control1, user->bbox ) ||
         FUNC1( control2, user->bbox ) )
      FUNC0( user->last.x,
                        control1->x,
                        control2->x,
                        to->x,
                        &user->bbox.xMin,
                        &user->bbox.xMax );

    if ( FUNC2( control1, user->bbox ) ||
         FUNC2( control2, user->bbox ) )
      FUNC0( user->last.y,
                        control1->y,
                        control2->y,
                        to->y,
                        &user->bbox.yMin,
                        &user->bbox.yMax );

    user->last = *to;

    return 0;
  }