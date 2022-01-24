#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int start; int /*<<< orphan*/  valid; scalar_t__ max_points; scalar_t__ num_points; int /*<<< orphan*/  tags; int /*<<< orphan*/  points; int /*<<< orphan*/  memory; } ;
typedef  TYPE_1__* FT_StrokeBorder ;
typedef  int /*<<< orphan*/  FT_Memory ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC1( FT_StrokeBorder  border )
  {
    FT_Memory  memory = border->memory;


    FUNC0( border->points );
    FUNC0( border->tags );

    border->num_points = 0;
    border->max_points = 0;
    border->start      = -1;
    border->valid      = FALSE;
  }