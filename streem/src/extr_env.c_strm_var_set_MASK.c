#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_string ;
struct TYPE_3__ {int /*<<< orphan*/ * env; } ;
typedef  TYPE_1__ strm_state ;
typedef  int /*<<< orphan*/  strm_env ;

/* Variables and functions */
 int /*<<< orphan*/  env ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * globals ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(strm_state* state, strm_string name, strm_value val)
{
  strm_env *e;

  if (!state) {
    if (!globals) {
      globals = FUNC1(env);
    }
    e = globals;
  }
  else {
    if (!state->env) {
      state->env = FUNC1(env);
    }
    e = state->env;
  }
  return FUNC0(e, name, val);
}