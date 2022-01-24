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
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int /*<<< orphan*/  strm_array ;

/* Variables and functions */
 scalar_t__ STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_array ary;
  strm_value func;
  strm_array a2;
  strm_value* v2;

  FUNC5(strm, argc, args, "Av", &ary, &func);
  a2 = FUNC2(NULL, FUNC0(ary));
  v2 = FUNC3(a2);
  if (FUNC1(strm, ary, func, &v2) == STRM_NG) {
    return STRM_NG;
  }
  *ret = FUNC4(a2);
  return STRM_OK;
}