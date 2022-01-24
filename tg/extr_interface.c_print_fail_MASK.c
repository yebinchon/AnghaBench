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
struct in_ev {int dummy; } ;
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_2__ {char* error; int /*<<< orphan*/  error_code; } ;

/* Variables and functions */
 TYPE_1__* TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  enable_json ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC9 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC10 (struct in_ev*,char*,char*,...) ; 

void FUNC11 (struct in_ev *ev) {
  FUNC9 (ev);
  if (!enable_json) {
    FUNC10 (ev, "FAIL: %d: %s\n", TLS->error_code, TLS->error);
  } else {
  #ifdef USE_JSON
    json_t *res = json_object ();
    assert (json_object_set (res, "result", json_string ("FAIL")) >= 0);
    assert (json_object_set (res, "error_code", json_integer (TLS->error_code)) >= 0);
    assert (json_object_set (res, "error", json_string (TLS->error)) >= 0);
    char *s = json_dumps (res, 0);
    mprintf (ev, "%s\n", s);
    json_decref (res);
    free (s);
  #endif
  }
  FUNC8 (ev);
}