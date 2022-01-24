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
typedef  int /*<<< orphan*/  dest ;
typedef  char* LPSTR ;
typedef  char* LPCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,char*,char,char,char,char,char,char,char,char) ; 
 char* FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
  LPCSTR lpSrc = "hello";
  LPSTR lpszRes;
  char dest[8];

  if (!&pStrCpyNXA)
  {
    FUNC5("StrCpyNXA() is not available\n");
    return;
  }

  FUNC2(dest, '\n', sizeof(dest));
  lpszRes = FUNC4(dest, lpSrc, FUNC0(dest));
  FUNC3(lpszRes == dest + 5 && !FUNC1(dest, "hello\0\n\n", sizeof(dest)),
       "StrCpyNXA: expected %p, \"hello\\0\\n\\n\", got %p, \"%d,%d,%d,%d,%d,%d,%d,%d\"\n",
       dest + 5, lpszRes, dest[0], dest[1], dest[2], dest[3], dest[4], dest[5], dest[6], dest[7]);
}