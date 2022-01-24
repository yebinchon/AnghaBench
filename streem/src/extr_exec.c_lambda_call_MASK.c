#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct strm_lambda {TYPE_1__* body; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_16__ {TYPE_6__* exc; } ;
typedef  TYPE_2__ strm_stream ;
struct TYPE_17__ {int /*<<< orphan*/ * env; int /*<<< orphan*/  prev; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ strm_state ;
struct TYPE_18__ {scalar_t__ next; scalar_t__ body; scalar_t__ cond; int /*<<< orphan*/  pat; } ;
typedef  TYPE_4__ node_plambda ;
struct TYPE_19__ {scalar_t__ body; scalar_t__ args; } ;
typedef  TYPE_5__ node_lambda ;
struct TYPE_20__ {scalar_t__ type; int /*<<< orphan*/  lineno; int /*<<< orphan*/  fname; int /*<<< orphan*/  arg; } ;
typedef  TYPE_6__ node_error ;
struct TYPE_21__ {int len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_7__ node_args ;
struct TYPE_15__ {scalar_t__ type; int /*<<< orphan*/  lineno; int /*<<< orphan*/  fname; } ;

/* Variables and functions */
 scalar_t__ NODE_ERROR_RETURN ; 
 scalar_t__ NODE_LAMBDA ; 
 scalar_t__ NODE_PLAMBDA ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int FUNC0 (TYPE_2__*,TYPE_3__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct strm_lambda* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(strm_stream* strm, strm_value func, int argc, strm_value* argv, strm_value* ret)
{
  struct strm_lambda* lambda = FUNC5(func);
  strm_state c = {0};
  int i, n;
  node_error* exc;

  c.prev = lambda->state;
  if (lambda->body->type == NODE_LAMBDA) {
    node_lambda* nlmbd = (node_lambda*)lambda->body;
    node_args* args = (node_args*)nlmbd->args;

    if (args == NULL) {
      if (argc > 0) goto argerr;
    }
    else if (args->len != argc) {
    argerr:
      FUNC3(strm, "wrong number of arguments");
      goto err;
    }
    for (i=0; i<argc; i++) {
      n = FUNC6(&c, FUNC1(args->data[i]), argv[i]);
      if (n) return n;
    }
    n = FUNC0(strm, &c, nlmbd->body, ret);
  }
  else if (lambda->body->type == NODE_PLAMBDA) {
    node_plambda* plmbd = (node_plambda*)lambda->body;
    int nexec = 0;

    while (plmbd) {
      if (FUNC2(strm, &c, plmbd->pat, argc, argv) == STRM_OK) {
        strm_value cond;

        if (plmbd->cond) {
          n = FUNC0(strm, &c, plmbd->cond, &cond);
          if (n == STRM_OK && FUNC4(cond)) {
            nexec++;
            n = FUNC0(strm, &c, plmbd->body, ret);
            break;
          }
        }
        else {
          nexec++;
          n = FUNC0(strm, &c, plmbd->body, ret);
          break;
        }
      }
      c.env = NULL;
      plmbd = (node_plambda*)plmbd->next;
    }
    if (nexec == 0) {
      FUNC3(strm, "match failure");
      goto err;
    }
  }
  else {
    return STRM_NG;
  }
  if (n == STRM_NG && strm) {
    exc = strm->exc;
    if (exc && exc->type == NODE_ERROR_RETURN) {
      *ret = exc->arg;
      return STRM_OK;
    }
  }
  return n;
 err:
  if (strm && strm->exc) {
    strm->exc->fname = lambda->body->fname;
    strm->exc->lineno = lambda->body->lineno;
  }
  return STRM_NG;
}