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

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  if (argc == 1) {
    if (FUNC3(args[0])) {
      *ret = FUNC4(-FUNC7(args[0]));
      return STRM_OK;
    }
    if (FUNC0(args[0])) {
      *ret = FUNC1(-FUNC6(args[0]));
      return STRM_OK;
    }
  }
  else {
    strm_value x, y;

    FUNC2(strm, argc, args, "NN", &x, &y);
    if (FUNC3(x) && FUNC3(y)) {
      *ret = FUNC4(FUNC7(x)-FUNC7(y));
      return STRM_OK;
    }
    if (FUNC5(x) && FUNC5(y)) {
      *ret = FUNC1(FUNC6(x)-FUNC6(y));
      return STRM_OK;
    }
  }
  return STRM_NG;
}