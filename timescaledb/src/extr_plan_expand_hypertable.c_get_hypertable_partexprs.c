
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {TYPE_4__* partitioning; int column_attno; } ;
struct TYPE_14__ {int attcollation; int atttypmod; int atttypid; } ;
struct TYPE_13__ {int main_table_relid; TYPE_1__* space; } ;
struct TYPE_10__ {int fn_expr; } ;
struct TYPE_11__ {TYPE_2__ func_fmgr; } ;
struct TYPE_12__ {TYPE_3__ partfunc; } ;
struct TYPE_9__ {int num_dimensions; TYPE_7__* dimensions; } ;
typedef int Query ;
typedef int List ;
typedef int Index ;
typedef TYPE_5__ Hypertable ;
typedef int HeapTuple ;
typedef TYPE_6__* Form_pg_attribute ;
typedef int Expr ;
typedef TYPE_7__ Dimension ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCacheAttNum (int ,int ) ;
 int elog (int ,char*) ;
 int * list_make1 (int *) ;
 int * list_make2 (int *,int ) ;
 scalar_t__ makeVar (int ,int ,int ,int ,int ,int ) ;
 int ** palloc0 (int) ;

__attribute__((used)) static List **
get_hypertable_partexprs(Hypertable *ht, Query *parse, Index varno)
{
 int i;
 List **partexprs;

 Assert(((void*)0) != ht->space);

 partexprs = palloc0(sizeof(List *) * ht->space->num_dimensions);

 for (i = 0; i < ht->space->num_dimensions; i++)
 {
  Dimension *dim = &ht->space->dimensions[i];
  Expr *expr;
  HeapTuple tuple = SearchSysCacheAttNum(ht->main_table_relid, dim->column_attno);
  Form_pg_attribute att;

  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for attribute");

  att = (Form_pg_attribute) GETSTRUCT(tuple);

  expr = (Expr *)
   makeVar(varno, dim->column_attno, att->atttypid, att->atttypmod, att->attcollation, 0);

  ReleaseSysCache(tuple);



  if (((void*)0) != dim->partitioning)
   partexprs[i] = list_make2(expr, dim->partitioning->partfunc.func_fmgr.fn_expr);
  else
   partexprs[i] = list_make1(expr);
 }

 return partexprs;
}
