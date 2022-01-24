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
struct TYPE_3__ {int dwLen; } ;
typedef  TYPE_1__ INTERNAL_BSTR ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
  INTERNAL_BSTR bstr;
  BSTR str = FUNC0(&bstr);

  bstr.dwLen = 0;
  FUNC2 (FUNC1(str) == 0, "Expected dwLen 0, got %d\n", FUNC1(str));
  bstr.dwLen = 2;
  FUNC2 (FUNC1(str) == 1, "Expected dwLen 1, got %d\n", FUNC1(str));
}