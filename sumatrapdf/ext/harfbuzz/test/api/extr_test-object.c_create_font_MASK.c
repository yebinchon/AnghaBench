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
typedef  void hb_font_t ;
typedef  int /*<<< orphan*/  hb_face_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC3 (void)
{
  hb_face_t *face = (hb_face_t *) FUNC0 ();
  hb_font_t *font = FUNC2 (face);
  FUNC1 (face);
  return font;
}