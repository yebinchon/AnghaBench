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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int dwLen; int /*<<< orphan*/ * szString; } ;
typedef  char OLECHAR ;
typedef  TYPE_1__* LPINTERNAL_BSTR ;
typedef  char* LPCSTR ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

__attribute__((used)) static void FUNC10(void)
{
  const OLECHAR szTest[10] = { 'T','e','s','t','\0' };
  const CHAR szTestA[6] = { 'T','e','s','t','\0','?' };
  char *buf;
  BSTR str;
  int i;

  if (sizeof(void *) == 4)  /* not limited to 0x80000000 on Win64 */
  {
      str = FUNC4(szTestA, 0x80000000);
      FUNC9 (str == NULL, "Expected NULL, got %p\n", str);
  }

  str = FUNC4(szTestA, 0xffffffff);
  FUNC9 (str == NULL, "Expected NULL, got %p\n", str);

  str = FUNC4(NULL, 0);
  FUNC9 (str != NULL, "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = FUNC0(str);

    FUNC9 (bstr->dwLen == 0, "Expected 0, got %d\n", bstr->dwLen);
    FUNC9 (!bstr->szString[0], "String not empty\n");
    FUNC5(str);
  }

  str = FUNC4(szTestA, 4);
  FUNC9 (str != NULL, "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = FUNC0(str);

    FUNC9 (bstr->dwLen == 4, "Expected 4, got %d\n", bstr->dwLen);
    FUNC9 (!FUNC6((LPCSTR)bstr->szString, szTestA), "String different\n");
    FUNC5(str);
  }

  /* Odd lengths are allocated rounded up, but truncated at the right position */
  str = FUNC4(szTestA, 3);
  FUNC9 (str != NULL, "Expected non-NULL\n");
  if (str)
  {
    const CHAR szTestTruncA[4] = { 'T','e','s','\0' };
    LPINTERNAL_BSTR bstr = FUNC0(str);

    FUNC9 (bstr->dwLen == 3, "Expected 3, got %d\n", bstr->dwLen);
    FUNC9 (!FUNC6((LPCSTR)bstr->szString, szTestTruncA), "String different\n");
    FUNC9 (!bstr->szString[2], "String not terminated\n");
    FUNC5(str);
  }

  str = FUNC4((LPCSTR)szTest, 8);
  FUNC9 (str != NULL, "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = FUNC0(str);

    FUNC9 (bstr->dwLen == 8, "Expected 8, got %d\n", bstr->dwLen);
    FUNC9 (!FUNC7(bstr->szString, szTest), "String different\n");
    FUNC5(str);
  }

  /* Make sure terminating null is aligned properly */
  buf = FUNC2(FUNC1(), 0, 1025);
  FUNC9 (buf != NULL, "Expected non-NULL\n");
  for (i = 0; i < 1024; i++)
  {
    LPINTERNAL_BSTR bstr;

    str = FUNC4(NULL, i);
    FUNC9 (str != NULL, "Expected non-NULL\n");
    bstr = FUNC0(str);
    FUNC9 (bstr->dwLen == i, "Expected %d, got %d\n", i, bstr->dwLen);
    FUNC9 (!bstr->szString[(i+sizeof(WCHAR)-1)/sizeof(WCHAR)], "String not terminated\n");
    FUNC5(str);

    FUNC8(buf, 0xaa, 1025);
    str = FUNC4(buf, i);
    FUNC9 (str != NULL, "Expected non-NULL\n");
    bstr = FUNC0(str);
    FUNC9 (bstr->dwLen == i, "Expected %d, got %d\n", i, bstr->dwLen);
    buf[i] = 0;
    FUNC9 (!FUNC6((LPCSTR)bstr->szString, buf), "String different\n");
    FUNC9 (!bstr->szString[(i+sizeof(WCHAR)-1)/sizeof(WCHAR)], "String not terminated\n");
    FUNC5(str);
  }
  FUNC3(FUNC1(), 0, buf);
}