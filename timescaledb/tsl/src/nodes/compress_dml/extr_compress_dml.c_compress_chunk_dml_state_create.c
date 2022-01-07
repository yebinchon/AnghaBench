
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * methods; } ;
struct TYPE_7__ {TYPE_1__ cscan_state; int chunk_relid; } ;
struct TYPE_6__ {int custom_private; } ;
typedef int Node ;
typedef TYPE_2__ CustomScan ;
typedef TYPE_3__ CompressChunkDmlState ;


 int T_CustomScanState ;
 int compress_chunk_dml_state_methods ;
 int linitial_oid (int ) ;
 scalar_t__ newNode (int,int ) ;

__attribute__((used)) static Node *
compress_chunk_dml_state_create(CustomScan *scan)
{
 CompressChunkDmlState *state;

 state = (CompressChunkDmlState *) newNode(sizeof(CompressChunkDmlState), T_CustomScanState);
 state->chunk_relid = linitial_oid(scan->custom_private);
 state->cscan_state.methods = &compress_chunk_dml_state_methods;
 return (Node *) state;
}
