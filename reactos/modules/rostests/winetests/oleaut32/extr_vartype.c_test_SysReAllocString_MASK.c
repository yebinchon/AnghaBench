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
struct TYPE_3__ {int dwLen; int /*<<< orphan*/  szString; } ;
typedef  char OLECHAR ;
typedef  TYPE_1__* LPINTERNAL_BSTR ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
  const OLECHAR szTest[5] = { 'T','e','s','t','\0' };
  const OLECHAR szSmaller[2] = { 'x','\0' };
  const OLECHAR szLarger[7] = { 'L','a','r','g','e','r','\0' };
  BSTR str;

  str = FUNC1(szTest, 4);
  FUNC5 (str != NULL, "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr;
    int changed;

    bstr = FUNC0(str);
    FUNC5 (bstr->dwLen == 8, "Expected 8, got %d\n", bstr->dwLen);
    FUNC5 (!FUNC4(bstr->szString, szTest), "String different\n");

    changed = FUNC3(&str, szSmaller);
    FUNC5 (changed == 1, "Expected 1, got %d\n", changed);
    /* Vista creates a new string, but older versions reuse the existing string. */
    /*ok (str == oldstr, "Created new string\n");*/
    bstr = FUNC0(str);
    FUNC5 (bstr->dwLen == 2, "Expected 2, got %d\n", bstr->dwLen);
    FUNC5 (!FUNC4(bstr->szString, szSmaller), "String different\n");

    changed = FUNC3(&str, szLarger);
    FUNC5 (changed == 1, "Expected 1, got %d\n", changed);
    /* Early versions always make new strings rather than resizing */
    /* ok (str == oldstr, "Created new string\n"); */
    bstr = FUNC0(str);
    FUNC5 (bstr->dwLen == 12, "Expected 12, got %d\n", bstr->dwLen);
    FUNC5 (!FUNC4(bstr->szString, szLarger), "String different\n");

    FUNC2(str);
  }
}