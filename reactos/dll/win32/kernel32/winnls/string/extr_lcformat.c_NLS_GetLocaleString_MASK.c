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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static WCHAR* FUNC6(LCID lcid, DWORD dwFlags)
{
  WCHAR szBuff[80], *str;
  DWORD dwLen;

  szBuff[0] = '\0';
  FUNC1(lcid, dwFlags, szBuff, FUNC0(szBuff));
  dwLen = FUNC5(szBuff) + 1;
  str = FUNC3(FUNC2(), 0, dwLen * sizeof(WCHAR));
  if (str)
    FUNC4(str, szBuff, dwLen * sizeof(WCHAR));
  return str;
}