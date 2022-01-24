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
struct TYPE_5__ {scalar_t__ start; int /*<<< orphan*/  movable; scalar_t__ num_points; } ;
typedef  int /*<<< orphan*/  FT_Vector ;
typedef  TYPE_1__* FT_StrokeBorder ;
typedef  scalar_t__ FT_Int ;
typedef  int /*<<< orphan*/  FT_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static FT_Error
  FUNC2( FT_StrokeBorder  border,
                           FT_Vector*       to )
  {
    /* close current open path if any ? */
    if ( border->start >= 0 )
      FUNC0( border, FALSE );

    border->start = (FT_Int)border->num_points;
    border->movable = FALSE;

    return FUNC1( border, to, FALSE );
  }