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
struct tgl_state {int dummy; } ;
struct in_ev {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 struct tgl_state* TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*) ; 

void FUNC4 (struct tgl_state *TLSR, void *extra, int success) {
  FUNC0 (TLS == TLSR);
  struct in_ev *ev = extra;
  if (ev && !--ev->refcnt) {
    FUNC1 (ev);
    return;
  }
  if (!success) { FUNC2 (ev); return; }
  else { FUNC3 (ev); return; }
}