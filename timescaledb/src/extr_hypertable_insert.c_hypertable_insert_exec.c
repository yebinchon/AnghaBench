
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {int custom_ps; } ;
typedef TYPE_1__ CustomScanState ;


 int * ExecProcNode (int ) ;
 int linitial (int ) ;

__attribute__((used)) static TupleTableSlot *
hypertable_insert_exec(CustomScanState *node)
{
 return ExecProcNode(linitial(node->custom_ps));
}
