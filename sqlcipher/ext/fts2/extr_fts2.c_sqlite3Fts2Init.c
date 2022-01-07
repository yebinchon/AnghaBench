
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_tokenizer_module ;
typedef int sqlite3 ;
typedef int fts2Hash ;


 int FTS2_HASH_STRING ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts2Module ;
 int hashDestroy ;
 int sqlite3Fts2HashClear (int *) ;
 int sqlite3Fts2HashInit (int *,int ,int) ;
 scalar_t__ sqlite3Fts2HashInsert (int *,char*,int,void*) ;
 int sqlite3Fts2IcuTokenizerModule (int const**) ;
 int sqlite3Fts2InitHashTable (int *,int *,char*) ;
 int sqlite3Fts2PorterTokenizerModule (int const**) ;
 int sqlite3Fts2SimpleTokenizerModule (int const**) ;
 int sqlite3_create_module_v2 (int *,char*,int *,void*,int ) ;
 int sqlite3_free (int *) ;
 int * sqlite3_malloc (int) ;
 int sqlite3_overload_function (int *,char*,int) ;

int sqlite3Fts2Init(sqlite3 *db){
  int rc = SQLITE_OK;
  fts2Hash *pHash = 0;
  const sqlite3_tokenizer_module *pSimple = 0;
  const sqlite3_tokenizer_module *pPorter = 0;
  const sqlite3_tokenizer_module *pIcu = 0;

  sqlite3Fts2SimpleTokenizerModule(&pSimple);
  sqlite3Fts2PorterTokenizerModule(&pPorter);





  pHash = sqlite3_malloc(sizeof(fts2Hash));
  if( !pHash ){
    rc = SQLITE_NOMEM;
  }else{
    sqlite3Fts2HashInit(pHash, FTS2_HASH_STRING, 1);
  }


  if( rc==SQLITE_OK ){
    if( sqlite3Fts2HashInsert(pHash, "simple", 7, (void *)pSimple)
     || sqlite3Fts2HashInsert(pHash, "porter", 7, (void *)pPorter)
     || (pIcu && sqlite3Fts2HashInsert(pHash, "icu", 4, (void *)pIcu))
    ){
      rc = SQLITE_NOMEM;
    }
  }





  if( SQLITE_OK==rc
   && SQLITE_OK==(rc = sqlite3Fts2InitHashTable(db, pHash, "fts2_tokenizer"))
   && SQLITE_OK==(rc = sqlite3_overload_function(db, "snippet", -1))
   && SQLITE_OK==(rc = sqlite3_overload_function(db, "offsets", -1))
   && SQLITE_OK==(rc = sqlite3_overload_function(db, "optimize", -1))




  ){
    return sqlite3_create_module_v2(
        db, "fts2", &fts2Module, (void *)pHash, hashDestroy
    );
  }


  assert( rc!=SQLITE_OK );
  if( pHash ){
    sqlite3Fts2HashClear(pHash);
    sqlite3_free(pHash);
  }
  return rc;
}
