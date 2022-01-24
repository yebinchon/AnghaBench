#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_8__* value; } ;
typedef  TYPE_1__ node_str ;
struct TYPE_13__ {TYPE_8__* rhs; TYPE_8__* lhs; } ;
typedef  TYPE_2__ node_op ;
struct TYPE_14__ {TYPE_8__* body; TYPE_8__* args; } ;
typedef  TYPE_3__ node_lambda ;
struct TYPE_15__ {TYPE_8__* opt_else; TYPE_8__* then; TYPE_8__* cond; } ;
typedef  TYPE_4__ node_if ;
struct TYPE_16__ {TYPE_8__* name; } ;
typedef  TYPE_5__ node_ident ;
struct TYPE_17__ {TYPE_8__* emit; } ;
typedef  TYPE_6__ node_emit ;
struct TYPE_18__ {TYPE_8__* args; } ;
typedef  TYPE_7__ node_call ;
typedef  int /*<<< orphan*/  node_array ;
struct TYPE_19__ {int type; } ;
typedef  TYPE_8__ node ;

/* Variables and functions */
#define  NODE_ARGS 140 
#define  NODE_ARRAY 139 
#define  NODE_BOOL 138 
#define  NODE_CALL 137 
#define  NODE_EMIT 136 
#define  NODE_FLOAT 135 
#define  NODE_IDENT 134 
#define  NODE_IF 133 
#define  NODE_INT 132 
#define  NODE_LAMBDA 131 
#define  NODE_OP 130 
#define  NODE_RETURN 129 
#define  NODE_STR 128 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(node* np) {
  if (!np) {
    return;
  }

  switch (np->type) {
  case NODE_ARGS:
    FUNC1(np);
    break;
  case NODE_IF:
    FUNC3(((node_if*)np)->cond);
    FUNC3(((node_if*)np)->then);
    FUNC3(((node_if*)np)->opt_else);
    FUNC0(np);
    break;
  case NODE_EMIT:
    FUNC3(((node_emit*)np)->emit);
    FUNC0(np);
    break;
  case NODE_OP:
    FUNC3(((node_op*)np)->lhs);
    FUNC3(((node_op*)np)->rhs);
    FUNC0(np);
    break;
  case NODE_LAMBDA:
    FUNC1(((node_lambda*)np)->args);
    FUNC3(((node_lambda*)np)->body);
    FUNC0(np);
    break;
  case NODE_CALL:
    FUNC3(((node_call*)np)->args);
    FUNC0(np);
    break;
  case NODE_RETURN:
    FUNC3((node*)np);
    FUNC0(np);
    break;
  case NODE_IDENT:
    FUNC0(((node_ident*)np)->name);
    FUNC0(np);
    break;
  case NODE_ARRAY:
    FUNC2((node_array*)np);
    break;
  case NODE_INT:
  case NODE_FLOAT:
    FUNC0(np);
    break;
  case NODE_BOOL:
    return;
  case NODE_STR:
    FUNC0(((node_str*)np)->value);
    FUNC0(np);
    break;
  default:
    break;
  }
}