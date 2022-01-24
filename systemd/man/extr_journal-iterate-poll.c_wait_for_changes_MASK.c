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
typedef  scalar_t__ uint64_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  sd_journal ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(sd_journal *j) {
  uint64_t t;
  int msec;
  struct pollfd pollfd;

  FUNC4(j, &t);
  if (t == (uint64_t) -1)
    msec = -1;
  else {
    struct timespec ts;
    uint64_t n;
    FUNC0(CLOCK_MONOTONIC, &ts);
    n = (uint64_t) ts.tv_sec * 1000000 + ts.tv_nsec / 1000;
    msec = t > n ? (int) ((t - n + 999) / 1000) : 0;
  }

  pollfd.fd = FUNC3(j);
  pollfd.events = FUNC2(j);
  FUNC1(&pollfd, 1, msec);
  return FUNC5(j);
}