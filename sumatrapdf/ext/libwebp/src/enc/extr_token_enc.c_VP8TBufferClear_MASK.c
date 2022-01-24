#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next_; } ;
typedef  TYPE_1__ VP8Tokens ;
struct TYPE_7__ {int /*<<< orphan*/  page_size_; TYPE_1__* pages_; } ;
typedef  TYPE_2__ VP8TBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(VP8TBuffer* const b) {
  if (b != NULL) {
    VP8Tokens* p = b->pages_;
    while (p != NULL) {
      VP8Tokens* const next = p->next_;
      FUNC1(p);
      p = next;
    }
    FUNC0(b, b->page_size_);
  }
}