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
typedef  int /*<<< orphan*/  _TCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* BeSilent ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int MAX_OPTIONS ; 
 int /*<<< orphan*/ ** Options ; 
 void* SkipEmptyLines ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(int argc, _TCHAR * argv[])
{
  int a;

  FUNC6 (FUNC5("ReactOS Project Statistics\n"));
  FUNC6 (FUNC5("==========================\n\n"));

  if (argc < 2 || argc > 2 + MAX_OPTIONS)
  {
    FUNC6(FUNC5("Usage: stats [-e] [-s] directory\n"));
    FUNC6(FUNC5("  -e: don't count empty lines\n"));
    FUNC6(FUNC5("  -s: be silent, don't print directories while processing\n"));
    return 1;
  }

  FUNC3();
  FUNC0 (FUNC5("c\0\0"), FUNC5("Ansi C Source files"));
  FUNC0 (FUNC5("cpp\0cxx\0\0"), FUNC5("C++ Source files"));
  FUNC0 (FUNC5("h\0\0"), FUNC5("Header files"));

  for(a = 1; a < argc - 1; a++)
  {
    Options[a - 1] = argv[a];
  }

  SkipEmptyLines = FUNC4(FUNC5("-e"));
  BeSilent = FUNC4(FUNC5("-s"));

  FUNC2 (argv[argc - 1]);
  FUNC1();

  return 0;
}