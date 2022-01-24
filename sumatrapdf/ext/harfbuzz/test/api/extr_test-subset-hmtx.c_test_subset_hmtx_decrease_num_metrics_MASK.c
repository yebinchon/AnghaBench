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
typedef  int /*<<< orphan*/  hb_set_t ;
typedef  int /*<<< orphan*/  hb_face_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10 (void)
{
  hb_face_t *face_abc = FUNC9 ("fonts/Inconsolata-Regular.abc.widerc.ttf");
  hb_face_t *face_ab = FUNC9 ("fonts/Inconsolata-Regular.ab.ttf");

  hb_set_t *codepoints = FUNC4 ();
  hb_face_t *face_abc_subset;
  FUNC3 (codepoints, 'a');
  FUNC3 (codepoints, 'b');
  face_abc_subset = FUNC8 (face_abc, FUNC7 (codepoints));
  FUNC5 (codepoints);

  FUNC1(face_abc_subset, 1); /* everything left has same width */
  FUNC6 (face_ab, face_abc_subset, FUNC0 ('h','m','t','x'));

  FUNC2 (face_abc_subset);
  FUNC2 (face_abc);
  FUNC2 (face_ab);
}