
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int plan; } ;
struct TYPE_7__ {int * methods; } ;
struct TYPE_9__ {int * subplan; TYPE_1__ csstate; } ;
struct TYPE_8__ {int custom_plans; } ;
typedef int Node ;
typedef TYPE_2__ CustomScan ;
typedef TYPE_3__ ConstraintAwareAppendState ;
typedef TYPE_4__ Append ;


 int T_CustomScanState ;
 int constraint_aware_append_state_methods ;
 TYPE_4__* linitial (int ) ;
 scalar_t__ newNode (int,int ) ;

__attribute__((used)) static Node *
constraint_aware_append_state_create(CustomScan *cscan)
{
 ConstraintAwareAppendState *state;
 Append *append = linitial(cscan->custom_plans);

 state = (ConstraintAwareAppendState *) newNode(sizeof(ConstraintAwareAppendState),
               T_CustomScanState);
 state->csstate.methods = &constraint_aware_append_state_methods;
 state->subplan = &append->plan;

 return (Node *) state;
}
