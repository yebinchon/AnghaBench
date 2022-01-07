
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int LOCKMODE ;


 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int relation_has_tuples (int ) ;

__attribute__((used)) static bool
table_has_tuples(Oid table_relid, LOCKMODE lockmode)
{
 Relation rel = heap_open(table_relid, lockmode);
 bool hastuples = relation_has_tuples(rel);

 heap_close(rel, lockmode);
 return hastuples;
}
