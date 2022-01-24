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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  SDL_mutex ;
typedef  int /*<<< orphan*/  SDL_cond ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline int
FUNC3(SDL_cond *cond, SDL_mutex *mutex, uint32_t ms) {
    int r = FUNC1(cond, mutex, ms);
    if (r < 0) {
        FUNC0("Could not wait on condition with timeout");
        FUNC2();
    }
    return r;
}