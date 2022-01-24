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
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ daemonize ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int exit_code ; 
 int /*<<< orphan*/  readline_disabled ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ sfd ; 
 scalar_t__ unix_socket ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ usfd ; 
 scalar_t__ FUNC5 (int,char*,int) ; 

void FUNC6 (int error) {
  int retval;
  if (daemonize) {
    return;
  }

  if (!readline_disabled) {
    FUNC3 ();
    FUNC2 ();
  }

  if (FUNC5 (1, "halt\n", 5) < 0) { 
    // Sad thing
  }
 
  if (unix_socket) {
    FUNC4 (unix_socket);
  }
  
  if (usfd > 0) {
    FUNC0 (usfd);
  }
  if (sfd > 0) {
    FUNC0 (sfd);
  }
 
  if (exit_code) {
    retval = exit_code;
  } else {
    retval = error ? EXIT_FAILURE : EXIT_SUCCESS;
  }

  FUNC1 (retval);
}