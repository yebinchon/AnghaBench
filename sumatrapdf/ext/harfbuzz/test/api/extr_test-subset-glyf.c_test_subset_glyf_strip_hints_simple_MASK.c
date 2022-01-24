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
 int /*<<< orphan*/  FUNC0 (char,char,char,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11 (void)
{
  hb_face_t *face_abc = FUNC10 ("fonts/Roboto-Regular.abc.ttf");
  hb_face_t *face_ac = FUNC10 ("fonts/Roboto-Regular.ac.nohints.ttf");

  hb_set_t *codepoints = FUNC4();
  hb_subset_input_t *input;
  hb_face_t *face_abc_subset;
  FUNC3 (codepoints, 'a');
  FUNC3 (codepoints, 'c');
  input = FUNC8 (codepoints);
  FUNC6 (input, true);
  face_abc_subset = FUNC9 (face_abc, input);
  FUNC5 (codepoints);

  FUNC7 (face_ac, face_abc_subset, FUNC0 ('l','o','c', 'a'));
  FUNC7 (face_ac, face_abc_subset, FUNC0 ('g','l','y','f'));
  FUNC1(face_abc_subset, 3, false);

  FUNC2 (face_abc_subset);
  FUNC2 (face_abc);
  FUNC2 (face_ac);
}