
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_tokenizer_module ;
typedef int sqlite3 ;
typedef int Fts3Hash ;


 int FTS3_HASH_STRING ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3Module ;
 int hashDestroy ;
 int sqlite3Fts3ExprInitTestInterface (int *,int *) ;
 int sqlite3Fts3HashClear (int *) ;
 int sqlite3Fts3HashInit (int *,int ,int) ;
 scalar_t__ sqlite3Fts3HashInsert (int *,char*,int,void*) ;
 int sqlite3Fts3IcuTokenizerModule (int const**) ;
 int sqlite3Fts3InitAux (int *) ;
 int sqlite3Fts3InitHashTable (int *,int *,char*) ;
 int sqlite3Fts3InitTerm (int *) ;
 int sqlite3Fts3InitTok (int *,void*) ;
 int sqlite3Fts3PorterTokenizerModule (int const**) ;
 int sqlite3Fts3SimpleTokenizerModule (int const**) ;
 int sqlite3Fts3UnicodeTokenizer (int const**) ;
 int sqlite3_create_module_v2 (int *,char*,int *,void*,int ) ;
 int sqlite3_free (int *) ;
 int * sqlite3_malloc (int) ;
 int sqlite3_overload_function (int *,char*,int) ;

int sqlite3Fts3Init(sqlite3 *db){
  int rc = SQLITE_OK;
  Fts3Hash *pHash = 0;
  const sqlite3_tokenizer_module *pSimple = 0;
  const sqlite3_tokenizer_module *pPorter = 0;

  const sqlite3_tokenizer_module *pUnicode = 0;
  sqlite3Fts3UnicodeTokenizer(&pUnicode);







  rc = sqlite3Fts3InitAux(db);
  if( rc!=SQLITE_OK ) return rc;

  sqlite3Fts3SimpleTokenizerModule(&pSimple);
  sqlite3Fts3PorterTokenizerModule(&pPorter);


  pHash = sqlite3_malloc(sizeof(Fts3Hash));
  if( !pHash ){
    rc = SQLITE_NOMEM;
  }else{
    sqlite3Fts3HashInit(pHash, FTS3_HASH_STRING, 1);
  }


  if( rc==SQLITE_OK ){
    if( sqlite3Fts3HashInsert(pHash, "simple", 7, (void *)pSimple)
     || sqlite3Fts3HashInsert(pHash, "porter", 7, (void *)pPorter)


     || sqlite3Fts3HashInsert(pHash, "unicode61", 10, (void *)pUnicode)




    ){
      rc = SQLITE_NOMEM;
    }
  }
  if( SQLITE_OK==rc
   && SQLITE_OK==(rc = sqlite3Fts3InitHashTable(db, pHash, "fts3_tokenizer"))
   && SQLITE_OK==(rc = sqlite3_overload_function(db, "snippet", -1))
   && SQLITE_OK==(rc = sqlite3_overload_function(db, "offsets", 1))
   && SQLITE_OK==(rc = sqlite3_overload_function(db, "matchinfo", 1))
   && SQLITE_OK==(rc = sqlite3_overload_function(db, "matchinfo", 2))
   && SQLITE_OK==(rc = sqlite3_overload_function(db, "optimize", 1))
  ){
    rc = sqlite3_create_module_v2(
        db, "fts3", &fts3Module, (void *)pHash, hashDestroy
    );
    if( rc==SQLITE_OK ){
      rc = sqlite3_create_module_v2(
          db, "fts4", &fts3Module, (void *)pHash, 0
      );
    }
    if( rc==SQLITE_OK ){
      rc = sqlite3Fts3InitTok(db, (void *)pHash);
    }
    return rc;
  }



  assert( rc!=SQLITE_OK );
  if( pHash ){
    sqlite3Fts3HashClear(pHash);
    sqlite3_free(pHash);
  }
  return rc;
}
