
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ps_TupFromTlist; } ;
struct TYPE_6__ {TYPE_1__ ps; } ;
struct TYPE_7__ {scalar_t__ custom_ps; TYPE_2__ ss; } ;
typedef TYPE_3__ CustomScanState ;


 int ExecReScan (int ) ;
 scalar_t__ NIL ;
 int linitial (scalar_t__) ;

__attribute__((used)) static void
ca_append_rescan(CustomScanState *node)
{



 if (node->custom_ps != NIL)
 {
  ExecReScan(linitial(node->custom_ps));
 }
}
