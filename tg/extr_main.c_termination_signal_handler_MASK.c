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

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  readline_disabled ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ sfd ; 
 scalar_t__ unix_socket ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ usfd ; 
 scalar_t__ FUNC6 (int,char*,int) ; 

void FUNC7 (int signum) {
  if (!readline_disabled) {
    FUNC4 ();
    FUNC3 ();
  }
  
  if (FUNC6 (1, "SIGNAL received\n", 18) < 0) { 
    // Sad thing
  }
 
  if (unix_socket) {
    FUNC5 (unix_socket);
  }
  
  if (usfd > 0) {
    FUNC0 (usfd);
  }
  if (sfd > 0) {
    FUNC0 (sfd);
  }
  FUNC2 ();
  
  FUNC1 (EXIT_FAILURE);
}