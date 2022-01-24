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
 int /*<<< orphan*/  cpal_v0 ; 
 int /*<<< orphan*/  cpal_v1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,char***) ; 
 int FUNC2 () ; 

int
FUNC3 (int argc, char **argv)
{
  int status = 0;

  FUNC1 (&argc, &argv);
  // cpal_v0 = hb_test_load_face ("../shaping/data/in-house/fonts/e90374e5e439e00725b4fe7a8d73db57c5a97f82.ttf");
  // cpal_v1 = hb_test_load_face ("../shaping/data/in-house/fonts/319f5d7ebffbefc5c5e6569f8cea73444d7a7268.ttf");
  // hb_test_add (test_hb_ot_color_get_palette_count);
  // hb_test_add (test_hb_ot_color_get_palette_name_id_empty);
  // hb_test_add (test_hb_ot_color_get_palette_name_id_v0);
  // hb_test_add (test_hb_ot_color_get_palette_name_id_v1);
  // hb_test_add (test_hb_ot_color_get_palette_flags_empty);
  // hb_test_add (test_hb_ot_color_get_palette_flags_v0);
  // hb_test_add (test_hb_ot_color_get_palette_flags_v1);
  // hb_test_add (test_hb_ot_color_get_palette_colors_empty);
  // hb_test_add (test_hb_ot_color_get_palette_colors_v0);
  // hb_test_add (test_hb_ot_color_get_palette_colors_v1);
  status = FUNC2();
  FUNC0 (cpal_v0);
  FUNC0 (cpal_v1);
  return status;
}