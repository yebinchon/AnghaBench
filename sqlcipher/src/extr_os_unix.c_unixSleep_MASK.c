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
struct timespec {int tv_sec; int tv_nsec; } ;
typedef  int /*<<< orphan*/  sqlite3_vfs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(sqlite3_vfs *NotUsed, int microseconds){
#if OS_VXWORKS
  struct timespec sp;

  sp.tv_sec = microseconds / 1000000;
  sp.tv_nsec = (microseconds % 1000000) * 1000;
  nanosleep(&sp, NULL);
  UNUSED_PARAMETER(NotUsed);
  return microseconds;
#elif defined(HAVE_USLEEP) && HAVE_USLEEP
  usleep(microseconds);
  UNUSED_PARAMETER(NotUsed);
  return microseconds;
#else
  int seconds = (microseconds+999999)/1000000;
  FUNC2(seconds);
  FUNC0(NotUsed);
  return seconds*1000000;
#endif
}