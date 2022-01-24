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
struct TYPE_3__ {scalar_t__ lenBV; int /*<<< orphan*/ * BV; } ;
typedef  TYPE_1__* CFF_Blend ;
typedef  scalar_t__ CF2_UInt ;
typedef  int /*<<< orphan*/  CF2_Stack ;
typedef  int /*<<< orphan*/  CF2_Fixed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC6( const CFF_Blend  blend,
               CF2_Stack        opStack,
               CF2_UInt         numBlends )
  {
    CF2_UInt  delta;
    CF2_UInt  base;
    CF2_UInt  i, j;
    CF2_UInt  numOperands = (CF2_UInt)( numBlends * blend->lenBV );


    base  = FUNC2( opStack ) - numOperands;
    delta = base + numBlends;

    for ( i = 0; i < numBlends; i++ )
    {
      const CF2_Fixed*  weight = &blend->BV[1];

      /* start with first term */
      CF2_Fixed  sum = FUNC3( opStack, i + base );


      for ( j = 1; j < blend->lenBV; j++ )
        sum = FUNC0( sum,
                         FUNC1( *weight++,
                                    FUNC3( opStack,
                                                       delta++ ) ) );

      /* store blended result  */
      FUNC5( opStack, i + base, sum );
    }

    /* leave only `numBlends' results on stack */
    FUNC4( opStack, numOperands - numBlends );
  }