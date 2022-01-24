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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct timeval {scalar_t__ tv_usec; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int O_NOCTTY ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int*,size_t const) ; 

__attribute__((used)) static void
FUNC6(uint32_t seed[4])
{
  struct timeval tv;
  uint32_t y;
  int i;

#if defined(__linux__) || defined(__FreeBSD__) || defined(__APPLE__)
  int fd = FUNC4("/dev/urandom",
# ifdef O_NONBLOCK
                           O_NONBLOCK|
# endif
# ifdef O_NOCTTY
                           O_NOCTTY|
# endif
                           O_RDONLY, 0);
  if (fd > 0) {
    struct stat statbuf;
    ssize_t ret = 0;
    const size_t size = sizeof(uint64_t)*2;

    if (FUNC2(fd, &statbuf) == 0 && FUNC0(statbuf.st_mode)) {
      ret = FUNC5(fd, seed, size);
    }
    FUNC1(fd);
    if ((size_t)ret == size) return;
  }
#endif

  y = 2463534242;
  FUNC3(&tv, NULL);
  y ^= (uint32_t)tv.tv_usec;
  for (i=0; i<4; i++) {
    y = y ^ (y << 13); y = y ^ (y >> 17);
    y = y ^ (y << 5);
    seed[i] = y;
  }
  return;
}