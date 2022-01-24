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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ CSTR_EQUAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(WORD ch1, WORD ch2, DWORD dwFlags)
{
  char str1[3], str2[3];

  str1[0] = FUNC4(ch1);
  if (FUNC3(str1[0]))
  {
    str1[1] = FUNC2(ch1);
    str1[2] = '\0';
  }
  else
    str1[1] = '\0';

  str2[0] = FUNC4(ch2);
  if (FUNC3(str2[0]))
  {
    str2[1] = FUNC2(ch2);
    str2[2] = '\0';
  }
  else
    str2[1] = '\0';

  return FUNC0(FUNC1(), dwFlags, str1, -1, str2, -1) - CSTR_EQUAL;
}