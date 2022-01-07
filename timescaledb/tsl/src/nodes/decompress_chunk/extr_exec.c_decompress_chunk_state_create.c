
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int custom_private; } ;
struct TYPE_5__ {int * methods; } ;
struct TYPE_6__ {int varattno_map; int reverse; int chunk_relid; int hypertable_id; TYPE_1__ csstate; } ;
typedef int Node ;
typedef int List ;
typedef TYPE_2__ DecompressChunkState ;
typedef TYPE_3__ CustomScan ;


 int T_CustomScanState ;
 int decompress_chunk_state_methods ;
 int * linitial (int ) ;
 int linitial_int (int *) ;
 int lsecond (int ) ;
 int lsecond_int (int *) ;
 int lthird_int (int *) ;
 scalar_t__ newNode (int,int ) ;

Node *
decompress_chunk_state_create(CustomScan *cscan)
{
 DecompressChunkState *state;
 List *settings;

 state = (DecompressChunkState *) newNode(sizeof(DecompressChunkState), T_CustomScanState);

 state->csstate.methods = &decompress_chunk_state_methods;

 settings = linitial(cscan->custom_private);
 state->hypertable_id = linitial_int(settings);
 state->chunk_relid = lsecond_int(settings);
 state->reverse = lthird_int(settings);
 state->varattno_map = lsecond(cscan->custom_private);

 return (Node *) state;
}
