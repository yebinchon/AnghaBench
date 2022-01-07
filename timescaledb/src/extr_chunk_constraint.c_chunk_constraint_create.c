
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_7__ {int hypertable_constraint_name; } ;
struct TYPE_9__ {TYPE_1__ fd; } ;
struct TYPE_8__ {scalar_t__ contype; int conindid; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__ FormData_pg_constraint ;
typedef TYPE_3__ ChunkConstraint ;


 scalar_t__ CONSTRAINT_FOREIGN ;
 int CONSTROID ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int NameStr (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int chunk_constraint_create_on_table (TYPE_3__*,int ) ;
 int get_relation_constraint_oid (int ,int ,int) ;
 int is_dimension_constraint (TYPE_3__*) ;
 int ts_chunk_index_create_from_constraint (int ,int ,int ,int ) ;
 int ts_process_utility_set_expect_chunk_modification (int) ;

__attribute__((used)) static Oid
chunk_constraint_create(ChunkConstraint *cc, Oid chunk_oid, int32 chunk_id, Oid hypertable_oid,
      int32 hypertable_id)
{
 Oid chunk_constraint_oid;

 ts_process_utility_set_expect_chunk_modification(1);
 chunk_constraint_oid = chunk_constraint_create_on_table(cc, chunk_oid);
 ts_process_utility_set_expect_chunk_modification(0);







 if (!OidIsValid(chunk_constraint_oid))
  return InvalidOid;

 if (!is_dimension_constraint(cc))
 {
  Oid hypertable_constraint_oid =
   get_relation_constraint_oid(hypertable_oid,
          NameStr(cc->fd.hypertable_constraint_name),
          0);
  HeapTuple tuple = SearchSysCache1(CONSTROID, hypertable_constraint_oid);

  if (HeapTupleIsValid(tuple))
  {
   FormData_pg_constraint *constr = (FormData_pg_constraint *) GETSTRUCT(tuple);

   if (OidIsValid(constr->conindid) && constr->contype != CONSTRAINT_FOREIGN)
    ts_chunk_index_create_from_constraint(hypertable_id,
               hypertable_constraint_oid,
               chunk_id,
               chunk_constraint_oid);

   ReleaseSysCache(tuple);
  }
 }

 return chunk_constraint_oid;
}
