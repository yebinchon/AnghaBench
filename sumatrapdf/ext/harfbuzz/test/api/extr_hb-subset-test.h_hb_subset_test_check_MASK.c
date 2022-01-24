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
typedef  int /*<<< orphan*/  hb_tag_t ;
typedef  int /*<<< orphan*/  hb_face_t ;
typedef  int /*<<< orphan*/  hb_blob_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static inline void
FUNC5 (hb_face_t *expected,
                      hb_face_t *actual,
                      hb_tag_t   table)
{
  hb_blob_t *expected_blob, *actual_blob;
  FUNC1(stderr, "compare %c%c%c%c\n", FUNC0(table));
  expected_blob = FUNC3 (expected, table);
  actual_blob = FUNC3 (actual, table);
  FUNC4 (expected_blob, actual_blob);
  FUNC2 (expected_blob);
  FUNC2 (actual_blob);
}