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
struct outqueuenode {int textlen; int textp; struct outqueuenode* buffer; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct outqueuenode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct outqueuenode*) ; 
 int outblocked ; 
 int /*<<< orphan*/  outqueue ; 
 int /*<<< orphan*/  outqueuelen ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int,int) ; 

__attribute__((used)) static void FUNC5(struct outqueuenode *entry) {
  int r;

  while (entry->textlen) {
    r= FUNC4(1, entry->textp, entry->textlen);
    if (r < 0) {
      if (errno == EINTR) continue;
      if (errno == EAGAIN) { outblocked= 1; break; }
      FUNC3("write stdout");
    }
    FUNC1(r <= entry->textlen);
    entry->textp += r;
    entry->textlen -= r;
  }
  if (!entry->textlen) {
    FUNC0(outqueue,entry);
    FUNC2(entry->buffer);
    FUNC2(entry);
    outqueuelen--;
  }
}