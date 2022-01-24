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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  hb_subset_input_t ;
typedef  int /*<<< orphan*/  hb_set_t ;
typedef  int /*<<< orphan*/  hb_face_t ;
typedef  char hb_codepoint_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10 (void)
{
  hb_face_t *face = FUNC9 ("fonts/oom-ccc61c92d589f895174cdef6ff2e3b20e9999a1a");

  hb_set_t *codepoints = FUNC4();
  const hb_codepoint_t text[] =
  {
    'A', 'B', 'C', 'D', 'E', 'X', 'Y', 'Z', '1', '2',
    '3', '@', '_', '%', '&', ')', '*', '$', '!'
  };
  unsigned int i;
  for (i = 0; i < sizeof (text) / sizeof (hb_codepoint_t); i++)
  {
    FUNC3 (codepoints, text[i]);
  }

  hb_subset_input_t *input = FUNC7 (codepoints);
  FUNC6 (input, true);
  FUNC5 (codepoints);

  hb_face_t *face_subset = FUNC8 (face, input);
  FUNC0 (*face_subset);
  FUNC0 (face_subset == FUNC2 ());

  FUNC1 (face_subset);
  FUNC1 (face);
}