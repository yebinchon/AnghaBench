
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct strm_lambda {TYPE_1__* body; int state; } ;
typedef int strm_value ;
struct TYPE_16__ {TYPE_6__* exc; } ;
typedef TYPE_2__ strm_stream ;
struct TYPE_17__ {int * env; int prev; int member_0; } ;
typedef TYPE_3__ strm_state ;
struct TYPE_18__ {scalar_t__ next; scalar_t__ body; scalar_t__ cond; int pat; } ;
typedef TYPE_4__ node_plambda ;
struct TYPE_19__ {scalar_t__ body; scalar_t__ args; } ;
typedef TYPE_5__ node_lambda ;
struct TYPE_20__ {scalar_t__ type; int lineno; int fname; int arg; } ;
typedef TYPE_6__ node_error ;
struct TYPE_21__ {int len; int * data; } ;
typedef TYPE_7__ node_args ;
struct TYPE_15__ {scalar_t__ type; int lineno; int fname; } ;


 scalar_t__ NODE_ERROR_RETURN ;
 scalar_t__ NODE_LAMBDA ;
 scalar_t__ NODE_PLAMBDA ;
 int STRM_NG ;
 int STRM_OK ;
 int exec_expr (TYPE_2__*,TYPE_3__*,scalar_t__,int *) ;
 int node_to_sym (int ) ;
 int pattern_match (TYPE_2__*,TYPE_3__*,int ,int,int *) ;
 int strm_raise (TYPE_2__*,char*) ;
 scalar_t__ strm_value_bool (int ) ;
 struct strm_lambda* strm_value_lambda (int ) ;
 int strm_var_set (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int
lambda_call(strm_stream* strm, strm_value func, int argc, strm_value* argv, strm_value* ret)
{
  struct strm_lambda* lambda = strm_value_lambda(func);
  strm_state c = {0};
  int i, n;
  node_error* exc;

  c.prev = lambda->state;
  if (lambda->body->type == NODE_LAMBDA) {
    node_lambda* nlmbd = (node_lambda*)lambda->body;
    node_args* args = (node_args*)nlmbd->args;

    if (args == ((void*)0)) {
      if (argc > 0) goto argerr;
    }
    else if (args->len != argc) {
    argerr:
      strm_raise(strm, "wrong number of arguments");
      goto err;
    }
    for (i=0; i<argc; i++) {
      n = strm_var_set(&c, node_to_sym(args->data[i]), argv[i]);
      if (n) return n;
    }
    n = exec_expr(strm, &c, nlmbd->body, ret);
  }
  else if (lambda->body->type == NODE_PLAMBDA) {
    node_plambda* plmbd = (node_plambda*)lambda->body;
    int nexec = 0;

    while (plmbd) {
      if (pattern_match(strm, &c, plmbd->pat, argc, argv) == STRM_OK) {
        strm_value cond;

        if (plmbd->cond) {
          n = exec_expr(strm, &c, plmbd->cond, &cond);
          if (n == STRM_OK && strm_value_bool(cond)) {
            nexec++;
            n = exec_expr(strm, &c, plmbd->body, ret);
            break;
          }
        }
        else {
          nexec++;
          n = exec_expr(strm, &c, plmbd->body, ret);
          break;
        }
      }
      c.env = ((void*)0);
      plmbd = (node_plambda*)plmbd->next;
    }
    if (nexec == 0) {
      strm_raise(strm, "match failure");
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
