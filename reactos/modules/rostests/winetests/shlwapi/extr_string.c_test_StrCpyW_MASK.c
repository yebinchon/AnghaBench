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
struct TYPE_3__ {int /*<<< orphan*/  byte_size_64; scalar_t__ value; } ;
typedef  TYPE_1__ StrFormatSizeResult ;
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* StrFormatSize_results ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
  WCHAR szSrc[256];
  WCHAR szBuff[256];
  const StrFormatSizeResult* result = StrFormatSize_results;
  LPWSTR lpRes;

  while(result->value)
  {
    FUNC1(CP_ACP, 0, result->byte_size_64, -1, szSrc, FUNC0(szSrc));

    lpRes = FUNC3(szBuff, szSrc);
    FUNC4(!FUNC2(szSrc, szBuff) && lpRes == szBuff, "Copied string %s wrong\n", result->byte_size_64);
    result++;
  }

  /* this test crashes on win2k SP4 */
  /*lpRes = StrCpyW(szBuff, NULL);*/
  /*ok(lpRes == szBuff, "Wrong return value: got %p expected %p\n", lpRes, szBuff);*/

  /* this test crashes on win2k SP4 */
  /*lpRes = StrCpyW(NULL, szSrc);*/
  /*ok(lpRes == NULL, "Wrong return value: got %p expected NULL\n", lpRes);*/

  /* this test crashes on win2k SP4 */
  /*lpRes = StrCpyW(NULL, NULL);*/
  /*ok(lpRes == NULL, "Wrong return value: got %p expected NULL\n", lpRes);*/
}