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
typedef  int /*<<< orphan*/  hb_subset_input_t ;
typedef  int /*<<< orphan*/  hb_set_t ;
typedef  int /*<<< orphan*/  hb_face_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  hb_face_t *face = FUNC8("fonts/crash-e4e0bb1458a91b692eba492c907ae1f94e635480");

  hb_subset_input_t *input = FUNC5 ();
  hb_set_t *codepoints = FUNC7 (input);
  FUNC3 (codepoints, 'a');
  FUNC3 (codepoints, 'b');
  FUNC3 (codepoints, 'c');

  hb_face_t *subset = FUNC4 (face, input);
  FUNC0 (*subset);
  FUNC0 (subset == FUNC2 ());

  FUNC6 (input);
  FUNC1 (subset);
  FUNC1 (face);
}