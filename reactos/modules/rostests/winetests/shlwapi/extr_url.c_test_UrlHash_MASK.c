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
 int /*<<< orphan*/  TEST_URL_1 ; 
 int /*<<< orphan*/  TEST_URL_2 ; 
 int /*<<< orphan*/  TEST_URL_3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pUrlHashA ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
  if (!pUrlHashA) {
    FUNC1("UrlHashA not found\n");
    return;
  }

  FUNC0(TEST_URL_1);
  FUNC0(TEST_URL_2);
  FUNC0(TEST_URL_3);
}