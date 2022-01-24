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
typedef  int DWORD_PTR ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
  const OLECHAR szTest[5] = { 'T','e','s','t','\0' };
  BSTR str;

  str = FUNC1(NULL);
  FUNC4 (str == NULL, "Expected NULL, got %p\n", str);

  str = FUNC1(szTest);
  FUNC4 (str != NULL, "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr = FUNC0(str);
    DWORD_PTR p = (DWORD_PTR)str;
    int align = sizeof(void *);

    FUNC4 (bstr->dwLen == 8, "Expected 8, got %d\n", bstr->dwLen);
    FUNC4 (!FUNC3(bstr->szString, szTest), "String different\n");
    FUNC4 ((p & ~(align-1)) == p, "Not aligned to %d\n", align);
    FUNC2(str);
  }
}