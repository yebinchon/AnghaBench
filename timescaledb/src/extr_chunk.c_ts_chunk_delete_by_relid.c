
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int DropBehavior ;


 int OidIsValid (int ) ;
 int get_namespace_name (int ) ;
 int get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 int ts_chunk_delete_by_name (int ,int ,int ) ;

__attribute__((used)) static int
ts_chunk_delete_by_relid(Oid relid, DropBehavior behavior)
{
 if (!OidIsValid(relid))
  return 0;

 return ts_chunk_delete_by_name(get_namespace_name(get_rel_namespace(relid)),
           get_rel_name(relid),
           behavior);
}
