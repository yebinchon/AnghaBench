
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int natts; } ;
struct TYPE_7__ {int attname; } ;
struct TYPE_6__ {TYPE_5__* rd_att; } ;
typedef TYPE_1__* Relation ;
typedef int List ;
typedef TYPE_2__* Form_pg_attribute ;


 int * NIL ;
 int NameStr (int ) ;
 TYPE_2__* TupleDescAttr (TYPE_5__*,int) ;
 int * lappend (int *,int ) ;
 int pstrdup (int ) ;

__attribute__((used)) static List *
create_index_colnames(Relation indexrel)
{
 List *colnames = NIL;
 int i;

 for (i = 0; i < indexrel->rd_att->natts; i++)
 {
  Form_pg_attribute idxattr = TupleDescAttr(indexrel->rd_att, i);

  colnames = lappend(colnames, pstrdup(NameStr(idxattr->attname)));
 }

 return colnames;
}
