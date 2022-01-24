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
typedef  scalar_t__ WRes ;
struct TYPE_4__ {char* cFileName; int dwFileAttributes; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  int WCHAR ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 scalar_t__ ERROR_NO_MORE_FILES ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,char*) ; 
 size_t FUNC10 (int*) ; 

__attribute__((used)) static WRes FUNC11(WCHAR *path)
{
  WIN32_FIND_DATAW fd;
  HANDLE handle;
  WRes res = 0;
  size_t len = FUNC10(path);
  FUNC9(path + len, L"*");
  handle = FUNC2(path, &fd);
  path[len] = L'\0';
  if (handle == INVALID_HANDLE_VALUE)
    return FUNC4();
  for (;;)
  {
    if (FUNC8(fd.cFileName, L".") != 0 &&
        FUNC8(fd.cFileName, L"..") != 0)
    {
      FUNC9(path + len, fd.cFileName);
      if ((fd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) != 0)
      {
        FUNC7(path, L"\\");
        res = FUNC11(path);
      }
      else
      {
        FUNC6(path, 0);
        if (FUNC0(path) == 0)
          res = FUNC4();
      }
      if (res != 0)
        break;
    }
    if (!FUNC3(handle, &fd))
    {
      res = FUNC4();
      if (res == ERROR_NO_MORE_FILES)
        res = 0;
      break;
    }
  }
  path[len] = L'\0';
  FUNC1(handle);
  if (res == 0)
  {
    if (!FUNC5(path))
      res = FUNC4();
  }
  return res;
}