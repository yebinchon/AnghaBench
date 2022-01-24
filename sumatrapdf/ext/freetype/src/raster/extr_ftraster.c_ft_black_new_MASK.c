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
typedef  TYPE_1__* black_PRaster ;
struct TYPE_5__ {int /*<<< orphan*/  memory; } ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  int FT_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int
  FUNC2( FT_Memory       memory,
                black_PRaster  *araster )
  {
    FT_Error       error;
    black_PRaster  raster = NULL;


    *araster = 0;
    if ( !FUNC0( raster ) )
    {
      raster->memory = memory;
      FUNC1( raster );

      *araster = raster;
    }

    return error;
  }