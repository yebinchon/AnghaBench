
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;
typedef int NameData ;
typedef scalar_t__ MinMaxResult ;
typedef int Datum ;
typedef int AttrNumber ;


 int AccessShareLock ;
 scalar_t__ MINMAX_FOUND ;
 scalar_t__ MINMAX_NO_INDEX ;
 int NameStr (int ) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errmsg (char*,int ,int ) ;
 int get_attname_compat (int ,int ,int) ;
 int get_rel_name (int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 scalar_t__ minmax_heapscan (int ,int ,int ,int *) ;
 int namestrcpy (int *,int ) ;
 scalar_t__ relation_minmax_indexscan (int ,int ,int *,int ,int *) ;

__attribute__((used)) static bool
chunk_get_minmax(Oid relid, Oid atttype, AttrNumber attnum, Datum minmax[2])
{
 Relation rel = heap_open(relid, AccessShareLock);
 NameData attname;
 MinMaxResult res;

 namestrcpy(&attname, get_attname_compat(relid, attnum, 0));
 res = relation_minmax_indexscan(rel, atttype, &attname, attnum, minmax);

 if (res == MINMAX_NO_INDEX)
 {
  ereport(WARNING,
    (errmsg("no index on \"%s\" found for adaptive chunking on chunk \"%s\"",
      NameStr(attname),
      get_rel_name(relid)),
     errdetail("Adaptive chunking works best with an index on the dimension being "
         "adapted.")));

  res = minmax_heapscan(rel, atttype, attnum, minmax);
 }

 heap_close(rel, AccessShareLock);

 return res == MINMAX_FOUND;
}
