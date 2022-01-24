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
struct in_ev {scalar_t__ fd; int /*<<< orphan*/  refcnt; scalar_t__ bev; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 short BEV_EVENT_EOF ; 
 short BEV_EVENT_ERROR ; 
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5 (struct bufferevent *bev, short what, void *_arg) {
  struct in_ev *ev = _arg;
  if (what & (BEV_EVENT_EOF | BEV_EVENT_ERROR)) {
    FUNC4 (E_WARNING, "Closing incoming connection\n");
    FUNC0 (ev->fd >= 0);
    FUNC2 (ev->fd);
    FUNC1 (bev);
    ev->bev = 0;
    if (!--ev->refcnt) { FUNC3 (ev); }
  }
}