#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ptr; } ;
struct epoll_event {TYPE_1__ data; } ;

/* Variables and functions */
 int MAX_EVENTS ; 
 int /*<<< orphan*/  epoll_fd ; 
 int FUNC0 (int /*<<< orphan*/ ,struct epoll_event*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void*
FUNC2(void* d)
{
  struct epoll_event events[MAX_EVENTS];
  int i, n;

  for (;;) {
    n = FUNC0(epoll_fd, events, MAX_EVENTS, -1);
    if (n < 0) {
      return NULL;
    }
    for (i=0; i<n; i++) {
      FUNC1(events[i].data.ptr);
    }
  }
  return NULL;
}