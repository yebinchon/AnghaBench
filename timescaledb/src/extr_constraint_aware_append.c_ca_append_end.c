
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ custom_ps; } ;
typedef TYPE_1__ CustomScanState ;


 int ExecEndNode (int ) ;
 scalar_t__ NIL ;
 int linitial (scalar_t__) ;

__attribute__((used)) static void
ca_append_end(CustomScanState *node)
{
 if (node->custom_ps != NIL)
 {
  ExecEndNode(linitial(node->custom_ps));
 }
}
