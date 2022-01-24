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
struct in_ev {scalar_t__ bev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 char* socket_answer ; 
 int socket_answer_pos ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 

void FUNC3 (struct in_ev *ev) {
  if (ev->bev) {
    static char s[100];
    FUNC1 (s, "ANSWER %d\n", socket_answer_pos);
    FUNC0 (ev->bev, s, FUNC2 (s));
    FUNC0 (ev->bev, socket_answer, socket_answer_pos);
    FUNC0 (ev->bev, "\n", 1);
  }
  socket_answer_pos = -1;
}