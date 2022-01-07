
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chunk_relid; int chunk_index; } ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int Index ;
typedef TYPE_1__ ConstifyTableOidContext ;


 scalar_t__ constify_tableoid_walker (int *,TYPE_1__*) ;

__attribute__((used)) static List *
constify_tableoid(List *node, Index chunk_index, Oid chunk_relid)
{
 ConstifyTableOidContext ctx = {
  .chunk_index = chunk_index,
  .chunk_relid = chunk_relid,
 };

 return (List *) constify_tableoid_walker((Node *) node, &ctx);
}
