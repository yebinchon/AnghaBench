#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_8__ {scalar_t__ lval; } ;
typedef  TYPE_1__ parser_state ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef  TYPE_2__ node_error ;
typedef  int /*<<< orphan*/  node ;
struct TYPE_10__ {TYPE_2__* exc; } ;

/* Variables and functions */
 scalar_t__ NODE_ERROR_RETURN ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  top_state ; 
 TYPE_3__ top_strm ; 

int
FUNC4(parser_state* p)
{
  strm_value v;
  node_error* exc;

  FUNC1(&top_state);

  FUNC0(&top_strm, &top_state, (node*)p->lval, &v);
  exc = top_strm.exc;
  if (exc != NULL) {
    if (exc->type != NODE_ERROR_RETURN) {
      FUNC3(&top_strm);
    }
    FUNC2(&top_strm);
  }
  return STRM_OK;
}