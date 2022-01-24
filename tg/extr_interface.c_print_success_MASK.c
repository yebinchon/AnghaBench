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
struct in_ev {int dummy; } ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ enable_json ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC8 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC9 (struct in_ev*,char*,...) ; 

void FUNC10 (struct in_ev *ev) {
  if (ev || enable_json) {
    FUNC8 (ev);
    if (!enable_json) {
      FUNC9 (ev, "SUCCESS\n");
    } else {
      #ifdef USE_JSON
        json_t *res = json_object ();
        assert (json_object_set (res, "result", json_string ("SUCCESS")) >= 0);
        char *s = json_dumps (res, 0);
        mprintf (ev, "%s\n", s);
        json_decref (res);
        free (s);
      #endif
    }
    FUNC7 (ev);
  }
}