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
struct timeval {long tv_sec; long tv_usec; } ;
typedef  int /*<<< orphan*/  strm_value ;

/* Variables and functions */
 scalar_t__ STRM_NG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct timeval*,int,int /*<<< orphan*/ *) ; 

strm_value
FUNC2(long sec, long usec, int offset)
{
  struct timeval tv;
  strm_value v;

  tv.tv_sec = sec;
  tv.tv_usec = usec;
  if (FUNC1(&tv, offset, &v) == STRM_NG) {
    return FUNC0();
  }
  return v;
}