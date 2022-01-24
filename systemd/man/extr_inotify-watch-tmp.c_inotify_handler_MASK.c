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
struct inotify_event {int mask; char* name; } ;
typedef  int /*<<< orphan*/  sd_event_source ;

/* Variables and functions */
 int IN_CREATE ; 
 int IN_DELETE ; 
 int IN_MOVED_TO ; 
 int IN_Q_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(sd_event_source *source,
                           const struct inotify_event *event,
                           void *userdata) {

  const char *desc = NULL;

  FUNC2(source, &desc);

  if (event->mask & IN_Q_OVERFLOW)
    FUNC0("inotify-handler <%s>: overflow\n", desc);
  else if (event->mask & IN_CREATE)
    FUNC0("inotify-handler <%s>: create on %s\n", desc, event->name);
  else if (event->mask & IN_DELETE)
    FUNC0("inotify-handler <%s>: delete on %s\n", desc, event->name);
  else if (event->mask & IN_MOVED_TO)
    FUNC0("inotify-handler <%s>: moved-to on %s\n", desc, event->name);

  /* Terminate the program if an "exit" file appears */
  if ((event->mask & (IN_CREATE|IN_MOVED_TO)) &&
      FUNC4(event->name, "exit") == 0)
    FUNC1(FUNC3(source), 0);

  return 1;
}