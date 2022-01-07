
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int Name ;
typedef scalar_t__ MinMaxResult ;
typedef int Datum ;
typedef int AttrNumber ;


 int AccessShareLock ;
 scalar_t__ MINMAX_NO_INDEX ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 scalar_t__ relation_minmax_indexscan (int ,int ,int ,int ,int *) ;

__attribute__((used)) static bool
table_has_minmax_index(Oid relid, Oid atttype, Name attname, AttrNumber attnum)
{
 Datum minmax[2];
 Relation rel = heap_open(relid, AccessShareLock);
 MinMaxResult res = relation_minmax_indexscan(rel, atttype, attname, attnum, minmax);

 heap_close(rel, AccessShareLock);

 return res != MINMAX_NO_INDEX;
}
