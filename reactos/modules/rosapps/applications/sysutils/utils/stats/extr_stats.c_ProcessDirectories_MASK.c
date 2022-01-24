#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dwFileAttributes; int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BeSilent ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FindExInfoStandard ; 
 int /*<<< orphan*/  FindExSearchLimitToDirectories ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

BOOL
FUNC9(LPTSTR Path)
{
  WIN32_FIND_DATA FindFile;
  TCHAR SearchPath[MAX_PATH];
  HANDLE SearchHandle;
  BOOL More;

  if(!BeSilent)
  {
    FUNC8 (FUNC4("Processing %s ...\n"), Path);
  }

  FUNC7 (SearchPath, Path);
  FUNC5 (SearchPath, FUNC4("\\*.*"));

  SearchHandle = FUNC1 (SearchPath,
    FindExInfoStandard,
    &FindFile,
    FindExSearchLimitToDirectories,
    NULL,
    0);
  if (SearchHandle != INVALID_HANDLE_VALUE)
  {
    More = TRUE;
    while (More)
    {
	    if ((FindFile.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
      && (FUNC6 (FindFile.cFileName, FUNC4(".")) != 0)
      && (FUNC6 (FindFile.cFileName, FUNC4("..")) != 0)
      && (FUNC6 (FindFile.cFileName, FUNC4("CVS")) != 0)
      && (FUNC6 (FindFile.cFileName, FUNC4(".svn")) != 0))
			{
			  FUNC7 (SearchPath, Path);
			  FUNC5 (SearchPath, FUNC4("\\"));
			  FUNC5 (SearchPath, FindFile.cFileName);
	      if (!FUNC9 (SearchPath))
          return FALSE;
	      if (!FUNC3 (SearchPath))
          return FALSE;
			}
      More = FUNC2 (SearchHandle, &FindFile);
    }
    FUNC0 (SearchHandle);
  }
  return TRUE;
}