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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_StdFont ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  wszCLSID_StdFont ; 

__attribute__((used)) static void FUNC6(void)
{
  WCHAR str[50];
  int len;

  /* invalid pointer */
  FUNC1(0xdeadbeef);
  len = FUNC2(NULL,str,50);
  FUNC5(len == 0, "len: %d (expected 0)\n", len);
  FUNC5(FUNC0() == 0xdeadbeef, "Expected 0xdeadbeef, got %x\n", FUNC0());

  /* Test corner cases for buffer size */
  len = FUNC2(&CLSID_StdFont,str,50);
  FUNC5(len == 39, "len: %d (expected 39)\n", len);
  FUNC5(!FUNC3(str, wszCLSID_StdFont),"string wasn't equal for CLSID_StdFont\n");

  FUNC4(str,0,sizeof str);
  len = FUNC2(&CLSID_StdFont,str,39);
  FUNC5(len == 39, "len: %d (expected 39)\n", len);
  FUNC5(!FUNC3(str, wszCLSID_StdFont),"string wasn't equal for CLSID_StdFont\n");

  len = FUNC2(&CLSID_StdFont,str,38);
  FUNC5(len == 0, "len: %d (expected 0)\n", len);

  len = FUNC2(&CLSID_StdFont,str,30);
  FUNC5(len == 0, "len: %d (expected 0)\n", len);
}