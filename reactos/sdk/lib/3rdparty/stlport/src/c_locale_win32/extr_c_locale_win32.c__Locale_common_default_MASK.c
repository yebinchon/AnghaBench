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
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  MAX_CP_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static const char* FUNC3(char* buf) {
  char cp[MAX_CP_LEN + 1];
  int CodePage = FUNC0(LOCALE_USER_DEFAULT);
  FUNC2(CodePage, cp);
  return FUNC1(LOCALE_USER_DEFAULT, cp, buf);
}