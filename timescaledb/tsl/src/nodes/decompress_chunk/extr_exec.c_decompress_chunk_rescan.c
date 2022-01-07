
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int custom_ps; } ;
struct TYPE_4__ {int initialized; } ;
typedef TYPE_1__ DecompressChunkState ;
typedef TYPE_2__ CustomScanState ;


 int ExecReScan (int ) ;
 int linitial (int ) ;

__attribute__((used)) static void
decompress_chunk_rescan(CustomScanState *node)
{
 ((DecompressChunkState *) node)->initialized = 0;
 ExecReScan(linitial(node->custom_ps));
}
