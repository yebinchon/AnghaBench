
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ varno; scalar_t__ varattno; scalar_t__ varlevelsup; scalar_t__ varnoold; scalar_t__ varoattno; } ;
typedef TYPE_2__ Var ;
struct TYPE_9__ {scalar_t__ uncompressed_relid_idx; scalar_t__ compressed_relid_idx; TYPE_1__* current_col_info; int compressed_relid; } ;
struct TYPE_7__ {scalar_t__ segmentby_column_index; int attname; } ;
typedef int Node ;
typedef TYPE_3__ EMCreationContext ;


 int Assert (int) ;
 int NameStr (int ) ;
 scalar_t__ copyObject (TYPE_2__*) ;
 scalar_t__ get_attnum (int ,int ) ;

__attribute__((used)) static Node *
create_var_for_compressed_equivalence_member(Var *var, const EMCreationContext *context)
{

 Assert(context->current_col_info != ((void*)0));
 Assert(context->current_col_info->segmentby_column_index > 0);
 Assert(var->varno == context->uncompressed_relid_idx);
 Assert(var->varattno > 0);

 var = (Var *) copyObject(var);

 if (var->varlevelsup == 0)
 {
  var->varno = context->compressed_relid_idx;
  var->varnoold = context->compressed_relid_idx;
  var->varattno =
   get_attnum(context->compressed_relid, NameStr(context->current_col_info->attname));

  var->varoattno = var->varattno;

  return (Node *) var;
 }

 return ((void*)0);
}
