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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10 (void)
{
  hb_face_t *face_components = FUNC9 ("fonts/Roboto-Regular.components.ttf");
  hb_face_t *face_subset = FUNC9 ("fonts/Roboto-Regular.components.subset.ttf");

  hb_set_t *codepoints = FUNC4();
  hb_face_t *face_generated_subset;
  FUNC3 (codepoints, 0x1fc);
  face_generated_subset = FUNC8 (face_components, FUNC7 (codepoints));
  FUNC5 (codepoints);

  FUNC6 (face_subset, face_generated_subset, FUNC0 ('g','l','y','f'));
  FUNC6 (face_subset, face_generated_subset, FUNC0 ('l','o','c', 'a'));
  FUNC1(face_generated_subset, 4, true);

  FUNC2 (face_generated_subset);
  FUNC2 (face_subset);
  FUNC2 (face_components);
}