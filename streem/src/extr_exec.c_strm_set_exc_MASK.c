#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_7__ {TYPE_2__* exc; } ;
typedef  TYPE_1__ strm_stream ;
struct TYPE_8__ {int type; scalar_t__ lineno; scalar_t__ fname; int /*<<< orphan*/  arg; } ;
typedef  TYPE_2__ node_error ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static node_error*
FUNC2(strm_stream* strm, int type, strm_value arg)
{
  node_error* exc = FUNC0(sizeof(node_error));

  if (!exc) return NULL;
  exc->type = type;
  exc->arg = arg;
  exc->fname = 0;
  exc->lineno = 0;
  FUNC1(strm);
  strm->exc = exc;
  return exc;
}