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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  hb_face_t *face_abc = FUNC8("fonts/Roboto-Regular.abc.ttf");

  hb_set_t *codepoints = FUNC3();
  hb_face_t *face_abc_subset;
  FUNC2 (codepoints, 97);
  FUNC2 (codepoints, 98);
  FUNC2 (codepoints, 99);
  face_abc_subset = FUNC7 (face_abc, FUNC6 (codepoints));
  FUNC4 (codepoints);

  FUNC5 (face_abc, face_abc_subset, FUNC0 ('c','m','a','p'));

  FUNC1 (face_abc_subset);
  FUNC1 (face_abc);
}