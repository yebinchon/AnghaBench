#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_3__ {int dwCodePage; } ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  TYPE_1__ NLS_FORMAT_NODE ;
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int INT ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int CP_ACP ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int LOCALE_USE_CP_ACP ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,char*,char*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static INT FUNC9(LCID lcid, DWORD dwFlags,
                                  const SYSTEMTIME* lpTime,
                                  LPCSTR lpFormat, LPSTR lpStr, INT cchOut)
{
  DWORD cp = CP_ACP;
  WCHAR szFormat[128], szOut[128];
  INT iRet;

  FUNC6("(0x%04x,0x%08x,%p,%s,%p,%d)\n", lcid, dwFlags, lpTime,
        FUNC8(lpFormat), lpStr, cchOut);

  if (FUNC4(lcid))
  {
    FUNC5(ERROR_INVALID_PARAMETER);
    return 0;
  }

  if (!(dwFlags & LOCALE_USE_CP_ACP))
  {
    const NLS_FORMAT_NODE *node = FUNC3(lcid, dwFlags);
    if (!node)
    {
      FUNC5(ERROR_INVALID_PARAMETER);
      return 0;
    }

    cp = node->dwCodePage;
  }

  if (lpFormat)
    FUNC1(cp, 0, lpFormat, -1, szFormat, FUNC0(szFormat));

  if (cchOut > (int) FUNC0(szOut))
    cchOut = FUNC0(szOut);

  szOut[0] = '\0';

  iRet = FUNC2(lcid, dwFlags, lpTime, lpFormat ? szFormat : NULL,
                                lpStr ? szOut : NULL, cchOut);

  if (lpStr)
  {
    if (szOut[0])
      FUNC7(cp, 0, szOut, iRet ? -1 : cchOut, lpStr, cchOut, 0, 0);
    else if (cchOut && iRet)
      *lpStr = '\0';
  }
  return iRet;
}