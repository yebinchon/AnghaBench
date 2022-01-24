#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  yMax; int /*<<< orphan*/  yMin; int /*<<< orphan*/  xMax; int /*<<< orphan*/  xMin; } ;
struct TYPE_13__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_12__ {TYPE_2__ last; TYPE_4__ bbox; } ;
typedef  TYPE_1__ TBBox_Rec ;
typedef  TYPE_2__ FT_Vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_4__) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__) ; 

__attribute__((used)) static int
  FUNC4( FT_Vector*  control,
                 FT_Vector*  to,
                 TBBox_Rec*  user )
  {
    /* in case `to' is implicit and not included in bbox yet */
    FUNC3( to, user->bbox );

    if ( FUNC1( control, user->bbox ) )
      FUNC0( user->last.x,
                        control->x,
                        to->x,
                        &user->bbox.xMin,
                        &user->bbox.xMax );

    if ( FUNC2( control, user->bbox ) )
      FUNC0( user->last.y,
                        control->y,
                        to->y,
                        &user->bbox.yMin,
                        &user->bbox.yMax );

    user->last = *to;

    return 0;
  }