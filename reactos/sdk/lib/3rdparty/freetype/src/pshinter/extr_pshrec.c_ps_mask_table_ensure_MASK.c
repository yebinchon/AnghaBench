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
struct TYPE_3__ {scalar_t__ max_masks; int /*<<< orphan*/  masks; } ;
typedef  TYPE_1__* PS_Mask_Table ;
typedef  scalar_t__ FT_UInt ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  int /*<<< orphan*/  FT_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FT_Err_Ok ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static FT_Error
  FUNC2( PS_Mask_Table  table,
                        FT_UInt        count,
                        FT_Memory      memory )
  {
    FT_UInt   old_max = table->max_masks;
    FT_UInt   new_max = count;
    FT_Error  error   = FT_Err_Ok;


    if ( new_max > old_max )
    {
      new_max = FUNC0( new_max, 8 );
      if ( !FUNC1( table->masks, old_max, new_max ) )
        table->max_masks = new_max;
    }
    return error;
  }