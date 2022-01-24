#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  test_shape ; 
 int /*<<< orphan*/  test_shape_clusters ; 
 int /*<<< orphan*/  test_shape_list ; 

int
FUNC3 (int argc, char **argv)
{
  FUNC1 (&argc, &argv);

  FUNC0 (test_shape);
  FUNC0 (test_shape_clusters);
  /* TODO test fallback shaper */
  /* TODO test shaper_full */
  FUNC0 (test_shape_list);

  return FUNC2();
}