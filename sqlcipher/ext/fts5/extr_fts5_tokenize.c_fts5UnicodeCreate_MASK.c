#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char eRemoveDiacritic; int nFold; scalar_t__ aFold; } ;
typedef  TYPE_1__ Unicode61Tokenizer ;
typedef  int /*<<< orphan*/  Fts5Tokenizer ;

/* Variables and functions */
 char FTS5_REMOVE_DIACRITICS_COMPLEX ; 
 char FTS5_REMOVE_DIACRITICS_NONE ; 
 char FTS5_REMOVE_DIACRITICS_SIMPLE ; 
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int FUNC8 (TYPE_1__*,char const*) ; 

__attribute__((used)) static int FUNC9(
  void *pUnused, 
  const char **azArg, int nArg,
  Fts5Tokenizer **ppOut
){
  int rc = SQLITE_OK;             /* Return code */
  Unicode61Tokenizer *p = 0;      /* New tokenizer object */ 

  FUNC0(pUnused);

  if( nArg%2 ){
    rc = SQLITE_ERROR;
  }else{
    p = (Unicode61Tokenizer*)FUNC5(sizeof(Unicode61Tokenizer));
    if( p ){
      const char *zCat = "L* N* Co";
      int i;
      FUNC4(p, 0, sizeof(Unicode61Tokenizer));

      p->eRemoveDiacritic = FTS5_REMOVE_DIACRITICS_SIMPLE;
      p->nFold = 64;
      p->aFold = FUNC6(p->nFold * sizeof(char));
      if( p->aFold==0 ){
        rc = SQLITE_NOMEM;
      }

      /* Search for a "categories" argument */
      for(i=0; rc==SQLITE_OK && i<nArg; i+=2){
        if( 0==FUNC7(azArg[i], "categories") ){
          zCat = azArg[i+1];
        }
      }

      if( rc==SQLITE_OK ){
        rc = FUNC8(p, zCat);
      }

      for(i=0; rc==SQLITE_OK && i<nArg; i+=2){
        const char *zArg = azArg[i+1];
        if( 0==FUNC7(azArg[i], "remove_diacritics") ){
          if( (zArg[0]!='0' && zArg[0]!='1' && zArg[0]!='2') || zArg[1] ){
            rc = SQLITE_ERROR;
          }else{
            p->eRemoveDiacritic = (zArg[0] - '0');
            FUNC1( p->eRemoveDiacritic==FTS5_REMOVE_DIACRITICS_NONE
                 || p->eRemoveDiacritic==FTS5_REMOVE_DIACRITICS_SIMPLE
                 || p->eRemoveDiacritic==FTS5_REMOVE_DIACRITICS_COMPLEX
            );
          }
        }else
        if( 0==FUNC7(azArg[i], "tokenchars") ){
          rc = FUNC2(p, zArg, 1);
        }else
        if( 0==FUNC7(azArg[i], "separators") ){
          rc = FUNC2(p, zArg, 0);
        }else
        if( 0==FUNC7(azArg[i], "categories") ){
          /* no-op */
        }else{
          rc = SQLITE_ERROR;
        }
      }

    }else{
      rc = SQLITE_NOMEM;
    }
    if( rc!=SQLITE_OK ){
      FUNC3((Fts5Tokenizer*)p);
      p = 0;
    }
    *ppOut = (Fts5Tokenizer*)p;
  }
  return rc;
}