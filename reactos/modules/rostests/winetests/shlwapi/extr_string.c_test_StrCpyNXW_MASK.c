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
typedef  int /*<<< orphan*/  lpInit ;
typedef  int /*<<< orphan*/  dest ;
typedef  char WCHAR ;
typedef  char* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,char*,char,char,char,char,char,char,char,char) ; 
 char* FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
  static const WCHAR lpInit[] = { '\n','\n','\n','\n','\n','\n','\n','\n' };
  static const WCHAR lpSrc[] = { 'h','e','l','l','o','\0' };
  static const WCHAR lpRes[] = { 'h','e','l','l','o','\0','\n','\n' };
  LPWSTR lpszRes;
  WCHAR dest[8];

  if (!&pStrCpyNXW)
  {
    FUNC5("StrCpyNXW() is not available\n");
    return;
  }

  FUNC2(dest, lpInit, sizeof(lpInit));
  lpszRes = FUNC4(dest, lpSrc, FUNC0(dest));
  FUNC3(lpszRes == dest + 5 && !FUNC1(dest, lpRes, sizeof(dest)),
       "StrCpyNXW: expected %p, \"hello\\0\\n\\n\", got %p, \"%d,%d,%d,%d,%d,%d,%d,%d\"\n",
       dest + 5, lpszRes, dest[0], dest[1], dest[2], dest[3], dest[4], dest[5], dest[6], dest[7]);
}