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
struct TYPE_3__ {scalar_t__ end_point; scalar_t__ max_bits; scalar_t__ num_bits; int /*<<< orphan*/  bytes; } ;
typedef  TYPE_1__* PS_Mask ;
typedef  int /*<<< orphan*/  FT_Memory ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC1( PS_Mask    mask,
                FT_Memory  memory )
  {
    FUNC0( mask->bytes );
    mask->num_bits  = 0;
    mask->max_bits  = 0;
    mask->end_point = 0;
  }