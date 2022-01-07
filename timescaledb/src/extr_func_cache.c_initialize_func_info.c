
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int oidvector ;
struct TYPE_9__ {TYPE_2__* funcinfo; int funcid; } ;
struct TYPE_8__ {int nargs; int * funcname; int arg_types; scalar_t__ is_timescaledb_func; } ;
struct TYPE_7__ {int keysize; int entrysize; int hcxt; } ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__ HASHCTL ;
typedef TYPE_2__ FuncInfo ;
typedef TYPE_3__ FuncEntry ;


 int AccessShareLock ;
 int Assert (int) ;
 int CacheMemoryContext ;
 int ERROR ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int HeapTupleGetOid (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PROCNAMEARGSNSP ;
 int PointerGetDatum (int *) ;
 int ProcedureRelationId ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache3 (int ,int ,int ,int ) ;
 int _MAX_CACHE_FUNCTIONS ;
 int * buildoidvector (int ,int ) ;
 int elog (int ,char*,int *,int ) ;
 int func_hash ;
 TYPE_2__* funcinfo ;
 int get_namespace_oid (char*,int) ;
 int hash_create (char*,int,TYPE_1__*,int) ;
 TYPE_3__* hash_search (int ,int *,int ,int*) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 char* ts_extension_schema_name () ;

__attribute__((used)) static void
initialize_func_info()
{
 HASHCTL hashctl = {
  .keysize = sizeof(Oid),
  .entrysize = sizeof(FuncEntry),
  .hcxt = CacheMemoryContext,
 };
 Oid extension_nsp = get_namespace_oid(ts_extension_schema_name(), 0);
 Oid pg_nsp = get_namespace_oid("pg_catalog", 0);
 HeapTuple tuple;
 Relation rel;
 int i;

 func_hash = hash_create("func_cache", _MAX_CACHE_FUNCTIONS, &hashctl, HASH_ELEM | HASH_BLOBS);

 rel = heap_open(ProcedureRelationId, AccessShareLock);

 for (i = 0; i < _MAX_CACHE_FUNCTIONS; i++)
 {
  FuncInfo *finfo = &funcinfo[i];
  Oid namespaceoid = finfo->is_timescaledb_func ? extension_nsp : pg_nsp;
  oidvector *paramtypes = buildoidvector(finfo->arg_types, finfo->nargs);
  FuncEntry *fentry;
  bool hash_found;
  Oid funcid;

  tuple = SearchSysCache3(PROCNAMEARGSNSP,
        PointerGetDatum(finfo->funcname),
        PointerGetDatum(paramtypes),
        ObjectIdGetDatum(namespaceoid));

  if (!HeapTupleIsValid(tuple))
   elog(ERROR,
     "cache lookup failed for function \"%s\" with %d args",
     finfo->funcname,
     finfo->nargs);

  funcid = HeapTupleGetOid(tuple);

  fentry = hash_search(func_hash, &funcid, HASH_ENTER, &hash_found);
  Assert(!hash_found);
  fentry->funcid = funcid;
  fentry->funcinfo = finfo;
  ReleaseSysCache(tuple);
 }

 heap_close(rel, AccessShareLock);
}
