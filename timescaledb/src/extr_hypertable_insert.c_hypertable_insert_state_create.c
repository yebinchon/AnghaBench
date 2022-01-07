
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int custom_private; int custom_plans; } ;
struct TYPE_6__ {int * methods; } ;
struct TYPE_8__ {TYPE_2__* mt; TYPE_1__ cscan_state; } ;
struct TYPE_7__ {scalar_t__ arbiterIndexes; } ;
typedef int Node ;
typedef TYPE_2__ ModifyTable ;
typedef TYPE_3__ HypertableInsertState ;
typedef TYPE_4__ CustomScan ;


 int T_CustomScanState ;
 int hypertable_insert_state_methods ;
 scalar_t__ linitial (int ) ;
 scalar_t__ newNode (int,int ) ;

__attribute__((used)) static Node *
hypertable_insert_state_create(CustomScan *cscan)
{
 HypertableInsertState *state;

 state = (HypertableInsertState *) newNode(sizeof(HypertableInsertState), T_CustomScanState);
 state->cscan_state.methods = &hypertable_insert_state_methods;
 state->mt = (ModifyTable *) linitial(cscan->custom_plans);






 state->mt->arbiterIndexes = linitial(cscan->custom_private);

 return (Node *) state;
}
