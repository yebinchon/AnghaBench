
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int custom_plans; } ;
struct TYPE_5__ {int * methods; } ;
struct TYPE_6__ {int subplan; TYPE_1__ csstate; } ;
typedef int Node ;
typedef TYPE_2__ GapFillState ;
typedef TYPE_3__ CustomScan ;


 int T_CustomScanState ;
 int gapfill_state_methods ;
 int linitial (int ) ;
 scalar_t__ newNode (int,int ) ;

Node *
gapfill_state_create(CustomScan *cscan)
{
 GapFillState *state = (GapFillState *) newNode(sizeof(GapFillState), T_CustomScanState);

 state->csstate.methods = &gapfill_state_methods;
 state->subplan = linitial(cscan->custom_plans);

 return (Node *) state;
}
