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
  hb_face_t *face_full = FUNC9 ("fonts/Mplus1p-Regular.660E,6975,73E0,5EA6,8F38,6E05.ttf");

  hb_set_t *codepoints = FUNC4();
  FUNC3 (codepoints, 0x660E);
  FUNC3 (codepoints, 0x6975);
  FUNC3 (codepoints, 0x73E0);
  FUNC3 (codepoints, 0x5EA6);
  FUNC3 (codepoints, 0x8F38);
  FUNC3 (codepoints, 0x6E05);
  hb_face_t *face_full_subset = FUNC8 (face_full, FUNC7 (codepoints));
  FUNC5 (codepoints);

  FUNC1(face_full_subset, 1); /* all have the same width */
  FUNC6 (face_full, face_full_subset, FUNC0 ('v','m','t','x'));

  FUNC2 (face_full_subset);
  FUNC2 (face_full);
}