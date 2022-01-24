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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  scalar_t__* LPTSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*) ; 
 int FUNC4 (scalar_t__*) ; 

LPTSTR FUNC5(LPTSTR arg)
{
  LPTSTR tmp = NULL;
  ULONG len;

  if (arg == NULL) return NULL;

  // Get rid of surrounding quotes
  len = FUNC4(arg);
  if (arg[len-1] == FUNC2('\"')) arg[len-1] = FUNC2('\0');
  if (arg[0]     == FUNC2('\"')) arg++;
  tmp = FUNC1(FUNC0(), 0, (FUNC4(arg)+1) * sizeof(TCHAR));
  FUNC3(tmp, arg);
  return tmp;
}