
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int num_subplans; int runtime_initialized; int * valid_subplans; int params; scalar_t__ runtime_exclusion; int current; int * subplanstates; } ;
struct TYPE_6__ {int * chgParam; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_8__ {TYPE_2__ ss; } ;
typedef TYPE_3__ CustomScanState ;
typedef TYPE_4__ ChunkAppendState ;


 int ExecReScan (int ) ;
 int INVALID_SUBPLAN_INDEX ;
 int UpdateChangedParamSet (int ,int *) ;
 int bms_free (int *) ;
 scalar_t__ bms_overlap (int *,int ) ;

__attribute__((used)) static void
chunk_append_rescan(CustomScanState *node)
{
 ChunkAppendState *state = (ChunkAppendState *) node;
 int i;

 for (i = 0; i < state->num_subplans; i++)
 {
  if (node->ss.ps.chgParam != ((void*)0))
   UpdateChangedParamSet(state->subplanstates[i], node->ss.ps.chgParam);

  ExecReScan(state->subplanstates[i]);
 }
 state->current = INVALID_SUBPLAN_INDEX;




 if (state->runtime_exclusion && bms_overlap(node->ss.ps.chgParam, state->params))
 {
  bms_free(state->valid_subplans);
  state->valid_subplans = ((void*)0);
  state->runtime_initialized = 0;
 }
}
