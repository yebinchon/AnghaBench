
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char eRemoveDiacritic; int nFold; scalar_t__ aFold; } ;
typedef TYPE_1__ Unicode61Tokenizer ;
typedef int Fts5Tokenizer ;


 char FTS5_REMOVE_DIACRITICS_COMPLEX ;
 char FTS5_REMOVE_DIACRITICS_NONE ;
 char FTS5_REMOVE_DIACRITICS_SIMPLE ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int UNUSED_PARAM (void*) ;
 int assert (int) ;
 int fts5UnicodeAddExceptions (TYPE_1__*,char const*,int) ;
 int fts5UnicodeDelete (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ sqlite3_malloc (int) ;
 scalar_t__ sqlite3_malloc64 (int) ;
 scalar_t__ sqlite3_stricmp (char const*,char*) ;
 int unicodeSetCategories (TYPE_1__*,char const*) ;

__attribute__((used)) static int fts5UnicodeCreate(
  void *pUnused,
  const char **azArg, int nArg,
  Fts5Tokenizer **ppOut
){
  int rc = SQLITE_OK;
  Unicode61Tokenizer *p = 0;

  UNUSED_PARAM(pUnused);

  if( nArg%2 ){
    rc = SQLITE_ERROR;
  }else{
    p = (Unicode61Tokenizer*)sqlite3_malloc(sizeof(Unicode61Tokenizer));
    if( p ){
      const char *zCat = "L* N* Co";
      int i;
      memset(p, 0, sizeof(Unicode61Tokenizer));

      p->eRemoveDiacritic = FTS5_REMOVE_DIACRITICS_SIMPLE;
      p->nFold = 64;
      p->aFold = sqlite3_malloc64(p->nFold * sizeof(char));
      if( p->aFold==0 ){
        rc = SQLITE_NOMEM;
      }


      for(i=0; rc==SQLITE_OK && i<nArg; i+=2){
        if( 0==sqlite3_stricmp(azArg[i], "categories") ){
          zCat = azArg[i+1];
        }
      }

      if( rc==SQLITE_OK ){
        rc = unicodeSetCategories(p, zCat);
      }

      for(i=0; rc==SQLITE_OK && i<nArg; i+=2){
        const char *zArg = azArg[i+1];
        if( 0==sqlite3_stricmp(azArg[i], "remove_diacritics") ){
          if( (zArg[0]!='0' && zArg[0]!='1' && zArg[0]!='2') || zArg[1] ){
            rc = SQLITE_ERROR;
          }else{
            p->eRemoveDiacritic = (zArg[0] - '0');
            assert( p->eRemoveDiacritic==FTS5_REMOVE_DIACRITICS_NONE
                 || p->eRemoveDiacritic==FTS5_REMOVE_DIACRITICS_SIMPLE
                 || p->eRemoveDiacritic==FTS5_REMOVE_DIACRITICS_COMPLEX
            );
          }
        }else
        if( 0==sqlite3_stricmp(azArg[i], "tokenchars") ){
          rc = fts5UnicodeAddExceptions(p, zArg, 1);
        }else
        if( 0==sqlite3_stricmp(azArg[i], "separators") ){
          rc = fts5UnicodeAddExceptions(p, zArg, 0);
        }else
        if( 0==sqlite3_stricmp(azArg[i], "categories") ){

        }else{
          rc = SQLITE_ERROR;
        }
      }

    }else{
      rc = SQLITE_NOMEM;
    }
    if( rc!=SQLITE_OK ){
      fts5UnicodeDelete((Fts5Tokenizer*)p);
      p = 0;
    }
    *ppOut = (Fts5Tokenizer*)p;
  }
  return rc;
}
