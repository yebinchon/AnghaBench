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
 int /*<<< orphan*/  test_subset_glyf ; 
 int /*<<< orphan*/  test_subset_glyf_noop ; 
 int /*<<< orphan*/  test_subset_glyf_strip_hints_composite ; 
 int /*<<< orphan*/  test_subset_glyf_strip_hints_invalid ; 
 int /*<<< orphan*/  test_subset_glyf_strip_hints_simple ; 
 int /*<<< orphan*/  test_subset_glyf_with_components ; 
 int /*<<< orphan*/  test_subset_glyf_with_gsub ; 
 int /*<<< orphan*/  test_subset_glyf_without_gsub ; 

int
FUNC3 (int argc, char **argv)
{
  FUNC1 (&argc, &argv);

  FUNC0 (test_subset_glyf_noop);
  FUNC0 (test_subset_glyf);
  FUNC0 (test_subset_glyf_strip_hints_simple);
  FUNC0 (test_subset_glyf_strip_hints_composite);
  FUNC0 (test_subset_glyf_strip_hints_invalid);
  FUNC0 (test_subset_glyf_with_components);
  FUNC0 (test_subset_glyf_with_gsub);
  FUNC0 (test_subset_glyf_without_gsub);

  return FUNC2();
}