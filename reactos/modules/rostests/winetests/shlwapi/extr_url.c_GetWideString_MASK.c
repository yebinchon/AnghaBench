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
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int INTERNET_MAX_URL_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static LPWSTR FUNC3(const char* szString)
{
  LPWSTR wszString = FUNC1(FUNC0(), 0, (2*INTERNET_MAX_URL_LENGTH) * sizeof(WCHAR));

  FUNC2(CP_ACP, 0, szString, -1, wszString, INTERNET_MAX_URL_LENGTH);

  return wszString;
}