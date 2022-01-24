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
struct callout {int flags; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int CALLOUT_ACTIVE ; 
 int CALLOUT_COMPLETED ; 
 int CALLOUT_PENDING ; 
 int CALLOUT_WAITING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct callout*) ; 
 int /*<<< orphan*/  callout_cnd ; 
 int /*<<< orphan*/  FUNC2 (struct callout*) ; 
 int /*<<< orphan*/  callout_mtx ; 
 scalar_t__ FUNC3 (struct callout*) ; 
 int /*<<< orphan*/  FUNC4 (struct callout*) ; 
 scalar_t__ callout_thread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int work ; 

__attribute__((used)) static int FUNC8(struct callout *c, int drain) {
  int result = 0;
  
  if ((drain) && (FUNC7() != callout_thread) && (FUNC3(c) ||
    (FUNC1(c) && !FUNC2(c))))
  {
    if (c->flags & CALLOUT_WAITING) {
      FUNC0();
    }
    
    /* wait for callout */
    c->flags |= CALLOUT_WAITING;
    work = true;

    FUNC5(&callout_cnd);
  
    while (!(c->flags & CALLOUT_COMPLETED)) {
      FUNC6(&c->wait, &callout_mtx);
    }

    c->flags &= ~CALLOUT_WAITING;
    result = 1;
  }
  
  FUNC4(c);
  
  /* clear flags */
  c->flags &= ~(CALLOUT_ACTIVE | CALLOUT_PENDING | CALLOUT_COMPLETED |
    CALLOUT_WAITING);
  
  return (result);
}