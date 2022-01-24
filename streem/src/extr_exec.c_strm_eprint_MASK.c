#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_6__ {TYPE_2__* exc; } ;
typedef  TYPE_1__ strm_stream ;
struct TYPE_7__ {scalar_t__ type; char* fname; int lineno; int /*<<< orphan*/  arg; } ;
typedef  TYPE_2__ node_error ;

/* Variables and functions */
 scalar_t__ NODE_ERROR_SKIP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(strm_stream* strm)
{
  strm_value v;
  node_error* exc = strm->exc;

  if (!exc) return;
  if (exc->type == NODE_ERROR_SKIP) return;
  if (exc->fname) {
    FUNC1(stderr, "%s:%d:", exc->fname, exc->lineno);
  }
  FUNC0(strm, stderr, 1, &exc->arg, &v);
  /* TODO: garbage correct previous exception value */
  FUNC2(strm);
}