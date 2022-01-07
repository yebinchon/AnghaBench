
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_8__* value; } ;
typedef TYPE_1__ node_str ;
struct TYPE_13__ {TYPE_8__* rhs; TYPE_8__* lhs; } ;
typedef TYPE_2__ node_op ;
struct TYPE_14__ {TYPE_8__* body; TYPE_8__* args; } ;
typedef TYPE_3__ node_lambda ;
struct TYPE_15__ {TYPE_8__* opt_else; TYPE_8__* then; TYPE_8__* cond; } ;
typedef TYPE_4__ node_if ;
struct TYPE_16__ {TYPE_8__* name; } ;
typedef TYPE_5__ node_ident ;
struct TYPE_17__ {TYPE_8__* emit; } ;
typedef TYPE_6__ node_emit ;
struct TYPE_18__ {TYPE_8__* args; } ;
typedef TYPE_7__ node_call ;
typedef int node_array ;
struct TYPE_19__ {int type; } ;
typedef TYPE_8__ node ;
 int free (TYPE_8__*) ;
 int node_args_free (TYPE_8__*) ;
 int node_array_free (int *) ;

void
node_free(node* np) {
  if (!np) {
    return;
  }

  switch (np->type) {
  case 140:
    node_args_free(np);
    break;
  case 133:
    node_free(((node_if*)np)->cond);
    node_free(((node_if*)np)->then);
    node_free(((node_if*)np)->opt_else);
    free(np);
    break;
  case 136:
    node_free(((node_emit*)np)->emit);
    free(np);
    break;
  case 130:
    node_free(((node_op*)np)->lhs);
    node_free(((node_op*)np)->rhs);
    free(np);
    break;
  case 131:
    node_args_free(((node_lambda*)np)->args);
    node_free(((node_lambda*)np)->body);
    free(np);
    break;
  case 137:
    node_free(((node_call*)np)->args);
    free(np);
    break;
  case 129:
    node_free((node*)np);
    free(np);
    break;
  case 134:
    free(((node_ident*)np)->name);
    free(np);
    break;
  case 139:
    node_array_free((node_array*)np);
    break;
  case 132:
  case 135:
    free(np);
    break;
  case 138:
    return;
  case 128:
    free(((node_str*)np)->value);
    free(np);
    break;
  default:
    break;
  }
}
