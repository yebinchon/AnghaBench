
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int natts; } ;
struct TYPE_11__ {int attname; } ;
struct TYPE_10__ {scalar_t__* ii_IndexAttrNumbers; scalar_t__* ii_KeyAttrNumbers; } ;
struct TYPE_9__ {int rd_id; TYPE_8__* rd_att; } ;
typedef TYPE_1__* Relation ;
typedef TYPE_2__ IndexInfo ;
typedef TYPE_3__ FormData_pg_attribute ;
typedef scalar_t__ AttrNumber ;


 int ERROR ;
 scalar_t__ InvalidAttrNumber ;
 int NameStr (int ) ;
 TYPE_3__* TupleDescAttr (TYPE_8__*,int) ;
 int elog (int ,char*,int ) ;
 scalar_t__ get_attnum (int ,int ) ;

__attribute__((used)) static void
chunk_adjust_colref_attnos(IndexInfo *ii, Relation idxrel, Relation chunkrel)
{
 int i;

 for (i = 0; i < idxrel->rd_att->natts; i++)
 {
  FormData_pg_attribute *idxattr = TupleDescAttr(idxrel->rd_att, i);
  AttrNumber attno = get_attnum(chunkrel->rd_id, NameStr(idxattr->attname));

  if (attno == InvalidAttrNumber)
   elog(ERROR, "index attribute %s not found in chunk", NameStr(idxattr->attname));



  ii->ii_IndexAttrNumbers[i] = attno;

 }
}
