
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int relid; TYPE_1__* reltarget; } ;
struct TYPE_4__ {int exprs; } ;
typedef TYPE_2__ RelOptInfo ;


 int get_atttype (int ,int ) ;
 int lappend (int ,int ) ;
 int makeVar (int ,int ,int ,int,int ,int ) ;

__attribute__((used)) static void
compressed_reltarget_add_whole_row_var(RelOptInfo *compressed_rel)
{
 compressed_rel->reltarget->exprs =
  lappend(compressed_rel->reltarget->exprs,
    makeVar(compressed_rel->relid, 0, get_atttype(compressed_rel->relid, 0), -1, 0, 0));
}
