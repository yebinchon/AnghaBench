
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int custom_ps; } ;
typedef TYPE_1__ CustomScanState ;


 int ExecEndNode (int ) ;
 int linitial (int ) ;

__attribute__((used)) static void
hypertable_insert_end(CustomScanState *node)
{
 ExecEndNode(linitial(node->custom_ps));
}
