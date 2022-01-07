
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int custom_ps; } ;
typedef int PlanState ;
typedef TYPE_1__ CustomScanState ;


 int ExecReScan (int *) ;
 int * linitial (int ) ;

__attribute__((used)) static void
chunk_dispatch_rescan(CustomScanState *node)
{
 PlanState *substate = linitial(node->custom_ps);

 ExecReScan(substate);
}
