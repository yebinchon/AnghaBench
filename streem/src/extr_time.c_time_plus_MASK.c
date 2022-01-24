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
struct strm_time {int /*<<< orphan*/  utc_offset; int /*<<< orphan*/  tv; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int STRM_NG ; 
 struct strm_time* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct timeval*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct timeval*,struct timeval*) ; 

__attribute__((used)) static int
FUNC7(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct strm_time* t1;
  struct timeval tv, tv2;

  if (argc != 2) {
    FUNC3(strm, "wrong # of arguments");
    return STRM_NG;
  }
  t1 = FUNC0(args[0]);
  if (!FUNC2(args[1])) {
    FUNC3(strm, "number required");
    return STRM_NG;
  }
  FUNC1(FUNC4(args[1]), &tv);
  FUNC6(&t1->tv, &tv, &tv2);
  return FUNC5(&tv2, t1->utc_offset, ret);
}