
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int relid; TYPE_1__* reltarget; } ;
struct TYPE_4__ {int exprs; } ;
typedef TYPE_2__ RelOptInfo ;
typedef int Oid ;
typedef scalar_t__ AttrNumber ;


 int Assert (int) ;
 scalar_t__ get_attnum (int ,char const*) ;
 int get_atttype (int ,scalar_t__) ;
 int lappend (int ,int ) ;
 int makeVar (int ,scalar_t__,int ,int,int ,int ) ;

__attribute__((used)) static void
compressed_reltarget_add_var_for_column(RelOptInfo *compressed_rel, Oid compressed_relid,
          const char *column_name)
{
 AttrNumber attnum = get_attnum(compressed_relid, column_name);
 Assert(attnum > 0);
 compressed_rel->reltarget->exprs = lappend(compressed_rel->reltarget->exprs,
              makeVar(compressed_rel->relid,
                attnum,
                get_atttype(compressed_rel->relid, attnum),
                -1,
                0,
                0));
}
