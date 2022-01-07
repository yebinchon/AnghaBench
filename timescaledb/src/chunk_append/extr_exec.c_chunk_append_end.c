
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_subplans; int * subplanstates; } ;
typedef int CustomScanState ;
typedef TYPE_1__ ChunkAppendState ;


 int ExecEndNode (int ) ;

__attribute__((used)) static void
chunk_append_end(CustomScanState *node)
{
 ChunkAppendState *state = (ChunkAppendState *) node;
 int i;

 for (i = 0; i < state->num_subplans; i++)
 {
  ExecEndNode(state->subplanstates[i]);
 }
}
