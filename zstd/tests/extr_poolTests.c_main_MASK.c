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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (size_t,size_t) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (size_t,size_t) ; 

int FUNC6(int argc, const char **argv) {
  size_t numThreads;
  (void)argc;
  (void)argv;

  if (FUNC0(0, 1)) {   /* should not be possible */
    FUNC1("FAIL: should not create POOL with 0 threads\n");
    return 1;
  }

  for (numThreads = 1; numThreads <= 4; ++numThreads) {
    size_t queueSize;
    for (queueSize = 0; queueSize <= 2; ++queueSize) {
      FUNC1("queueSize==%u, numThreads=%u \n",
            (unsigned)queueSize, (unsigned)numThreads);
      if (FUNC3(numThreads, queueSize)) {
        FUNC1("FAIL: testOrder\n");
        return 1;
      }
      FUNC1("SUCCESS: testOrder\n");
      if (FUNC5(numThreads, queueSize)) {
        FUNC1("FAIL: testWait\n");
        return 1;
      }
      FUNC1("SUCCESS: testWait\n");
    }
  }

  if (FUNC4()) {
      FUNC1("FAIL: thread reduction not effective \n");
      return 1;
  } else {
      FUNC1("SUCCESS: thread reduction effective \n");
  }

  if (FUNC2()) {
      FUNC1("FAIL: jobs in queue not completed on early end \n");
      return 1;
  } else {
      FUNC1("SUCCESS: all jobs in queue completed on early end \n");
  }

  FUNC1("PASS: all POOL tests\n");

  return 0;
}