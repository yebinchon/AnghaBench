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
struct TYPE_3__ {scalar_t__ string; scalar_t__ str_to_int64_hex; scalar_t__ str_to_int64_ex; } ;
typedef  TYPE_1__ StrToIntResult ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STIF_SUPPORT_HEX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* StrToInt_results ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC4(void)
{
  WCHAR szBuff[256];
  const StrToIntResult *result = StrToInt_results;
  int return_val;
  BOOL bRet;

  while (result->string)
  {
    return_val = -1;
    FUNC1(CP_ACP, 0, result->string, -1, szBuff, FUNC0(szBuff));
    bRet = FUNC2(szBuff, 0, &return_val);
    FUNC3(!bRet || return_val != -1, "No result returned from '%s'\n",
       result->string);
    if (bRet)
      FUNC3(return_val == (int)result->str_to_int64_ex, "converted '%s' wrong (%d)\n",
         result->string, return_val);
    result++;
  }

  result = StrToInt_results;
  while (result->string)
  {
    return_val = -1;
    FUNC1(CP_ACP, 0, result->string, -1, szBuff, FUNC0(szBuff));
    bRet = FUNC2(szBuff, STIF_SUPPORT_HEX, &return_val);
    FUNC3(!bRet || return_val != -1, "No result returned from '%s'\n",
       result->string);
    if (bRet)
      FUNC3(return_val == (int)result->str_to_int64_hex, "converted '%s' wrong (%d)\n",
         result->string, return_val);
    result++;
  }
}