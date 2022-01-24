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

/* Variables and functions */
 int /*<<< orphan*/  TYPE_BASIC_BYTE ; 
 int /*<<< orphan*/  TYPE_BASIC_DOUBLE ; 
 int /*<<< orphan*/  TYPE_BASIC_ERROR_STATUS_T ; 
 int /*<<< orphan*/  TYPE_BASIC_FLOAT ; 
 int /*<<< orphan*/  TYPE_BASIC_HANDLE ; 
 int /*<<< orphan*/  TYPE_BASIC_WCHAR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
  FUNC1("byte", TYPE_BASIC_BYTE);
  FUNC1("wchar_t", TYPE_BASIC_WCHAR);
  FUNC1("float", TYPE_BASIC_FLOAT);
  FUNC1("double", TYPE_BASIC_DOUBLE);
  FUNC1("error_status_t", TYPE_BASIC_ERROR_STATUS_T);
  FUNC1("handle_t", TYPE_BASIC_HANDLE);
  FUNC0("boolean", FUNC2(TYPE_BASIC_BYTE));
}