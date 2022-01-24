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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  randValue ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,unsigned long*,int) ; 

__attribute__((used)) static unsigned long FUNC4()
{
  int randDev = FUNC2("/dev/urandom", O_RDONLY);
  unsigned long randValue;
  if (randDev < 0) {
    FUNC0("Unable to open /dev/urandom");
  }
  ssize_t readBytes = FUNC3(randDev, &randValue, sizeof(randValue));
  if (readBytes < sizeof(randValue)) {
    FUNC0("Unable to read from /dev/urandom");
  }
  FUNC1(randDev);
  return randValue;
}