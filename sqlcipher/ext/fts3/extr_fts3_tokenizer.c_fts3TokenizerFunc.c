
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int pPtr ;
typedef int Fts3Hash ;


 int SQLITE_TRANSIENT ;
 int assert (int) ;
 scalar_t__ fts3TokenizerEnabled (int *) ;
 void* sqlite3Fts3HashFind (int *,unsigned char const*,int) ;
 void* sqlite3Fts3HashInsert (int *,void*,int,void*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,unsigned char const*) ;
 int sqlite3_result_blob (int *,void*,int,int ) ;
 int sqlite3_result_error (int *,char*,int) ;
 scalar_t__ sqlite3_user_data (int *) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_frombind (int *) ;
 unsigned char* sqlite3_value_text (int *) ;

__attribute__((used)) static void fts3TokenizerFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  Fts3Hash *pHash;
  void *pPtr = 0;
  const unsigned char *zName;
  int nName;

  assert( argc==1 || argc==2 );

  pHash = (Fts3Hash *)sqlite3_user_data(context);

  zName = sqlite3_value_text(argv[0]);
  nName = sqlite3_value_bytes(argv[0])+1;

  if( argc==2 ){
    if( fts3TokenizerEnabled(context) || sqlite3_value_frombind(argv[1]) ){
      void *pOld;
      int n = sqlite3_value_bytes(argv[1]);
      if( zName==0 || n!=sizeof(pPtr) ){
        sqlite3_result_error(context, "argument type mismatch", -1);
        return;
      }
      pPtr = *(void **)sqlite3_value_blob(argv[1]);
      pOld = sqlite3Fts3HashInsert(pHash, (void *)zName, nName, pPtr);
      if( pOld==pPtr ){
        sqlite3_result_error(context, "out of memory", -1);
      }
    }else{
      sqlite3_result_error(context, "fts3tokenize disabled", -1);
      return;
    }
  }else{
    if( zName ){
      pPtr = sqlite3Fts3HashFind(pHash, zName, nName);
    }
    if( !pPtr ){
      char *zErr = sqlite3_mprintf("unknown tokenizer: %s", zName);
      sqlite3_result_error(context, zErr, -1);
      sqlite3_free(zErr);
      return;
    }
  }
  if( fts3TokenizerEnabled(context) || sqlite3_value_frombind(argv[0]) ){
    sqlite3_result_blob(context, (void *)&pPtr, sizeof(pPtr), SQLITE_TRANSIENT);
  }
}
