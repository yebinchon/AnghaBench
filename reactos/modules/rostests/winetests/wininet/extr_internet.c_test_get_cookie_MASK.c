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
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(void)
{
  DWORD len;
  BOOL ret;

  len = 1024;
  FUNC2(0xdeadbeef);
  ret = FUNC1("http://www.example.com", NULL, NULL, &len);
  FUNC3(!ret && FUNC0() == ERROR_NO_MORE_ITEMS,
    "InternetGetCookie should have failed with %s and error %d\n",
    ret ? "TRUE" : "FALSE", FUNC0());
  FUNC3(!len, "len = %u\n", len);
}