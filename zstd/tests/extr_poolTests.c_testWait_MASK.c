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
struct data {int dummy; } ;
typedef  int /*<<< orphan*/  POOL_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,struct data*) ; 
 int /*<<< orphan*/ * FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  waitFn ; 

__attribute__((used)) static int FUNC4(size_t numThreads, size_t queueSize) {
  struct data data;
  POOL_ctx* const ctx = FUNC2(numThreads, queueSize);
  FUNC0(ctx);
  { size_t i;
    for (i = 0; i < 16; ++i) {
        FUNC1(ctx, &waitFn, &data);
    }
  }
  FUNC3(ctx);
  return 0;
}