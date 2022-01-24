#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  masks; } ;
typedef  int /*<<< orphan*/  PS_Mask ;
typedef  TYPE_1__* PS_Dimension ;
typedef  int /*<<< orphan*/  FT_UInt ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  int /*<<< orphan*/  FT_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static FT_Error
  FUNC2( PS_Dimension  dim,
                           FT_UInt       end_point,
                           FT_Memory     memory )
  {
    PS_Mask  mask;


    /* end current mask */
    FUNC0( dim, end_point );

    /* allocate new one */
    return FUNC1( &dim->masks, memory, &mask );
  }