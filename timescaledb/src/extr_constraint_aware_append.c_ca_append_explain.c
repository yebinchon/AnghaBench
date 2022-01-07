
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int num_append_subplans; } ;
struct TYPE_10__ {int custom_private; } ;
struct TYPE_7__ {scalar_t__ plan; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;
struct TYPE_9__ {TYPE_2__ ss; } ;
typedef int Oid ;
typedef int List ;
typedef int ExplainState ;
typedef TYPE_3__ CustomScanState ;
typedef TYPE_4__ CustomScan ;
typedef TYPE_5__ ConstraintAwareAppendState ;


 int ExplainPropertyIntegerCompat (char*,int *,int ,int *) ;
 int ExplainPropertyText (char*,int ,int *) ;
 int get_rel_name (int ) ;
 int linitial (int ) ;
 int linitial_oid (int ) ;

__attribute__((used)) static void
ca_append_explain(CustomScanState *node, List *ancestors, ExplainState *es)
{
 CustomScan *cscan = (CustomScan *) node->ss.ps.plan;
 ConstraintAwareAppendState *state = (ConstraintAwareAppendState *) node;
 Oid relid = linitial_oid(linitial(cscan->custom_private));

 ExplainPropertyText("Hypertable", get_rel_name(relid), es);
 ExplainPropertyIntegerCompat("Chunks left after exclusion",
         ((void*)0),
         state->num_append_subplans,
         es);
}
