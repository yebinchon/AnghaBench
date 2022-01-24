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
struct TYPE_3__ {int dwLen; int /*<<< orphan*/ * szString; } ;
typedef  char OLECHAR ;
typedef  TYPE_1__* LPINTERNAL_BSTR ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
  const OLECHAR szTest[5] = { 'T','e','s','t','\0' };
  BSTR str;

  /* Very early native dlls do not limit the size of strings, so skip this test */
  if (0)
  {
  str = FUNC1(szTest, 0x80000000);
  FUNC4 (str == NULL, "Expected NULL, got %p\n", str);
  }
  
  str = FUNC1(NULL, 0);
  FUNC4 (str != NULL, "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = FUNC0(str);

    FUNC4 (bstr->dwLen == 0, "Expected 0, got %d\n", bstr->dwLen);
    FUNC4 (!bstr->szString[0], "String not empty\n");
    FUNC2(str);
  }

  str = FUNC1(szTest, 4);
  FUNC4 (str != NULL, "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = FUNC0(str);

    FUNC4 (bstr->dwLen == 8, "Expected 8, got %d\n", bstr->dwLen);
    FUNC4 (!FUNC3(bstr->szString, szTest), "String different\n");
    FUNC2(str);
  }
}