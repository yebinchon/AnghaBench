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
struct TYPE_3__ {scalar_t__ string; scalar_t__ str_to_int64_hex; scalar_t__ str_to_int64_ex; } ;
typedef  TYPE_1__ StrToIntResult ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  STIF_SUPPORT_HEX ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* StrToInt_results ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC2(void)
{
  const StrToIntResult *result = StrToInt_results;
  int return_val;
  BOOL bRet;

  while (result->string)
  {
    return_val = -1;
    bRet = FUNC0(result->string,0,&return_val);
    FUNC1(!bRet || return_val != -1, "No result returned from '%s'\n",
       result->string);
    if (bRet)
      FUNC1(return_val == (int)result->str_to_int64_ex, "converted '%s' wrong (%d)\n",
         result->string, return_val);
    result++;
  }

  result = StrToInt_results;
  while (result->string)
  {
    return_val = -1;
    bRet = FUNC0(result->string,STIF_SUPPORT_HEX,&return_val);
    FUNC1(!bRet || return_val != -1, "No result returned from '%s'\n",
       result->string);
    if (bRet)
      FUNC1(return_val == (int)result->str_to_int64_hex, "converted '%s' wrong (%d)\n",
         result->string, return_val);
    result++;
  }
}