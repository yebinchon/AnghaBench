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
struct sort_arg {int /*<<< orphan*/  func; int /*<<< orphan*/ * strm; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int /*<<< orphan*/  strm_int ;
typedef  int /*<<< orphan*/  strm_array ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sort_arg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_array ary;
  strm_value* p;
  strm_int len;
  strm_value func;

  FUNC4(strm, argc, args, "a|v", &p, &len, &func);

  ary = FUNC1(p, len);
  p = FUNC2(ary);
  if (argc == 1) {
    FUNC0(p, len, NULL);
  }
  else {
    struct sort_arg arg;

    arg.strm = strm;
    arg.func = func;
    FUNC0(p, len, &arg);
  }
  *ret = FUNC3(ary);
  return STRM_OK;
}