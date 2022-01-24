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
struct timeval {int dummy; } ;
struct strm_time {int /*<<< orphan*/  tv; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 struct strm_time* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 double FUNC7 (struct timeval*) ; 

__attribute__((used)) static int
FUNC8(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct strm_time *t1;
  struct strm_time *t2;
  struct timeval tv;
  double d;

  if (argc != 2) {
    FUNC3(strm, "wrong # of arguments");
    return STRM_NG;
  }
  if (FUNC2(args[1])) {
    d = FUNC4(args[1]);
    args[1] = FUNC1(-d);
    return FUNC5(strm, argc, args, ret);
  }
  t1 = FUNC0(args[0]);
  t2 = FUNC0(args[1]);
  FUNC6(&t1->tv, &t2->tv, &tv);
  d = FUNC7(&tv);
  *ret = FUNC1(d);
  return STRM_OK;
}