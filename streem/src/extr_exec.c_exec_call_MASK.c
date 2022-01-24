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
typedef  int /*<<< orphan*/  strm_string ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int /*<<< orphan*/  strm_state ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(strm_stream* strm, strm_state* state, strm_string name, int argc, strm_value* argv, strm_value* ret)
{
  int n = STRM_NG;
  strm_value m;

  if (argc > 0) {
    strm_state* ns = FUNC5(argv[0]);
    if (ns) {
      n = FUNC6(ns, name, &m);
      if (n == STRM_NG) {
        if (argc > 0 && FUNC1(argv[0])) {
          m = FUNC4(name);
          n = FUNC0(strm, argv[0], 1, &m, ret);
          if (n == STRM_OK && argc == 1) return STRM_OK;
          m = *ret;
        }
      }
    }
  }
  if (n == STRM_NG) {
    n = FUNC6(state, name, &m);
  }
  if (n == STRM_OK) {
    return FUNC2(strm, m, argc, argv, ret);
  }
  FUNC3(strm, "function not found");
  return STRM_NG;
}