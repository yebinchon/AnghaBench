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
struct TYPE_3__ {int dwLen; int /*<<< orphan*/  szString; } ;
typedef  char OLECHAR ;
typedef  TYPE_1__* LPINTERNAL_BSTR ;
typedef  char const* BSTR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 
 char* FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (char const**,char const*,int const) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int,int const) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

__attribute__((used)) static void FUNC9(void)
{
  const OLECHAR szTest[5] = { 'T','e','s','t','\0' };
  const OLECHAR szSmaller[2] = { 'x','\0' };
  const OLECHAR szLarger[7] = { 'L','a','r','g','e','r','\0' };
  BSTR str;

  str = FUNC1(szTest, 4);
  FUNC8 (str != NULL, "Expected non-NULL\n");
  if (str)
  {
    LPINTERNAL_BSTR bstr;
    int changed;

    bstr = FUNC0(str);
    FUNC8 (bstr->dwLen == 8, "Expected 8, got %d\n", bstr->dwLen);
    FUNC8 (!FUNC5(bstr->szString, szTest), "String different\n");

    changed = FUNC3(&str, szSmaller, 1);
    FUNC8 (changed == 1, "Expected 1, got %d\n", changed);
    /* Vista creates a new string, but older versions reuse the existing string. */
    /*ok (str == oldstr, "Created new string\n");*/
    bstr = FUNC0(str);
    FUNC8 (bstr->dwLen == 2, "Expected 2, got %d\n", bstr->dwLen);
    FUNC8 (!FUNC5(bstr->szString, szSmaller), "String different\n");

    changed = FUNC3(&str, szLarger, 6);
    FUNC8 (changed == 1, "Expected 1, got %d\n", changed);
    /* Early versions always make new strings rather than resizing */
    /* ok (str == oldstr, "Created new string\n"); */
    bstr = FUNC0(str);
    FUNC8 (bstr->dwLen == 12, "Expected 12, got %d\n", bstr->dwLen);
    FUNC8 (!FUNC5(bstr->szString, szLarger), "String different\n");

    changed = FUNC3(&str, str, 6);
    FUNC8 (changed == 1, "Expected 1, got %d\n", changed);

    FUNC2(str);
  }

  /* Windows always returns null terminated strings */
  str = FUNC1(szTest, 4);
  FUNC8 (str != NULL, "Expected non-NULL\n");
  if (str)
  {
    const int CHUNK_SIZE = 64;
    const int STRING_SIZE = 24;
    int changed;
    changed = FUNC3(&str, NULL, CHUNK_SIZE);
    FUNC8 (changed == 1, "Expected 1, got %d\n", changed);
    FUNC8 (str != NULL, "Expected non-NULL\n");
    if (str)
    {
      BSTR oldstr = str;

      /* Filling string */
      FUNC7 (str, 0xAB, CHUNK_SIZE * sizeof (OLECHAR));
      /* Checking null terminator */
      changed = FUNC3(&str, NULL, STRING_SIZE);
      FUNC8 (changed == 1, "Expected 1, got %d\n", changed);
      FUNC8 (str != NULL, "Expected non-NULL\n");
      if (str)
      {
        FUNC8 (str == oldstr, "Expected reuse of the old string memory\n");
        FUNC8 (str[STRING_SIZE] == 0,
            "Expected null terminator, got 0x%04X\n", str[STRING_SIZE]);
        FUNC2(str);
      }
    }
  }

  /* Some Windows applications use the same pointer for pbstr and psz */
  str = FUNC1(szTest, 4);
  FUNC8(str != NULL, "Expected non-NULL\n");
  if(str)
  {
      FUNC3(&str, str, 1000000);
      FUNC8(FUNC4(str)==1000000, "Incorrect string length\n");
      FUNC8(!FUNC6(szTest, str, 4*sizeof(WCHAR)), "Incorrect string returned\n");

      FUNC2(str);
  }
}