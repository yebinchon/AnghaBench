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
 int /*<<< orphan*/  test_get_constant ; 
 int /*<<< orphan*/  test_get_glyph_assembly ; 
 int /*<<< orphan*/  test_get_glyph_assembly_italics_correction ; 
 int /*<<< orphan*/  test_get_glyph_italics_correction ; 
 int /*<<< orphan*/  test_get_glyph_kerning ; 
 int /*<<< orphan*/  test_get_glyph_top_accent_attachment ; 
 int /*<<< orphan*/  test_get_glyph_variants ; 
 int /*<<< orphan*/  test_get_min_connector_overlap ; 
 int /*<<< orphan*/  test_has_data ; 
 int /*<<< orphan*/  test_is_glyph_extended_shape ; 

int
FUNC3 (int argc, char **argv)
{
  FUNC1 (&argc, &argv);

  FUNC0 (test_has_data);
  FUNC0 (test_get_constant);
  FUNC0 (test_get_glyph_italics_correction);
  FUNC0 (test_get_glyph_top_accent_attachment);
  FUNC0 (test_is_glyph_extended_shape);
  FUNC0 (test_get_glyph_kerning);
  FUNC0 (test_get_glyph_assembly_italics_correction);
  FUNC0 (test_get_min_connector_overlap);
  FUNC0 (test_get_glyph_variants);
  FUNC0 (test_get_glyph_assembly);

  return FUNC2();
}