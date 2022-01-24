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
typedef  scalar_t__ uid_t ;
struct passwd {scalar_t__ pw_uid; char* pw_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (char*) ; 
 struct passwd* FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 char* home_directory ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 

char *FUNC7 (void) {
  if (home_directory) { return home_directory; }
  home_directory = FUNC1("TELEGRAM_HOME");
  if (!FUNC5 (home_directory)) { return home_directory = FUNC6 (home_directory); }
  home_directory = FUNC1("HOME");
  if (!FUNC5 (home_directory)) { return home_directory = FUNC6 (home_directory); }
  struct passwd *current_passwd;
  uid_t user_id;
  FUNC4 ();
  user_id = FUNC3 ();
  while ((current_passwd = FUNC2 ())) {
    if (current_passwd->pw_uid == user_id) {
      home_directory = FUNC6 (current_passwd->pw_dir);
      break;
    }
  }
  FUNC0 ();
  if (FUNC5 (home_directory)) { home_directory = FUNC6 ("."); }
  return home_directory;
}