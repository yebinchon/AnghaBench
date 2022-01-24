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
typedef  int strm_int ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value x;
  strm_int y;

  FUNC3(strm, argc, args, "Ni", &x, &y);
  if (FUNC4(x)) {
    *ret = FUNC5(FUNC7(x)%y);
    return STRM_OK;
  }
  if (FUNC1(x)) {
    *ret = FUNC2(FUNC0(FUNC6(x), y));
    return STRM_OK;
  }
  return STRM_NG;
}