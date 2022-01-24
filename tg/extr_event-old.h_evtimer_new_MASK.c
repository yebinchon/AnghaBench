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
struct event_base {int dummy; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,struct event*) ; 
 int /*<<< orphan*/  FUNC1 (struct event*,int,int /*<<< orphan*/ ,void (*) (int,short,void*),void*) ; 
 struct event* FUNC2 (int) ; 

__attribute__((used)) static inline struct event *FUNC3 (struct event_base *base, void(*callback)(int, short, void *), void *arg) {
  struct event *ev = FUNC2 (sizeof (*ev));
  FUNC1 (ev, -1, 0, callback, arg);
  FUNC0 (base, ev);
  return ev;
}