
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hypertable_id; int id; } ;
struct TYPE_5__ {TYPE_1__ fd; int hypertable_relid; int table_id; int constraints; } ;
typedef int Oid ;
typedef int ChunkConstraint ;
typedef TYPE_2__ Chunk ;


 int chunk_constraint_create (int *,int ,int ,int ,int ) ;
 int chunk_constraint_insert (int *) ;
 int * chunk_constraints_add (int ,int ,int ,int *,char const*) ;
 char* get_constraint_name (int ) ;

void
ts_chunk_constraint_create_on_chunk(Chunk *chunk, Oid constraint_oid)
{
 const char *constrname;
 ChunkConstraint *cc;

 constrname = get_constraint_name(constraint_oid);
 cc = chunk_constraints_add(chunk->constraints, chunk->fd.id, 0, ((void*)0), constrname);

 chunk_constraint_insert(cc);

 chunk_constraint_create(cc,
       chunk->table_id,
       chunk->fd.id,
       chunk->hypertable_relid,
       chunk->fd.hypertable_id);
}
