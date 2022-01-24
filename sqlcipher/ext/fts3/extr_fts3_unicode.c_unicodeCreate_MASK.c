#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int eRemoveDiacritic; } ;
typedef  TYPE_1__ unicode_tokenizer ;
typedef  int /*<<< orphan*/  sqlite3_tokenizer ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (TYPE_1__*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
  int nArg,                       /* Size of array argv[] */
  const char * const *azArg,      /* Tokenizer creation arguments */
  sqlite3_tokenizer **pp          /* OUT: New tokenizer handle */
){
  unicode_tokenizer *pNew;        /* New tokenizer object */
  int i;
  int rc = SQLITE_OK;

  pNew = (unicode_tokenizer *) FUNC2(sizeof(unicode_tokenizer));
  if( pNew==NULL ) return SQLITE_NOMEM;
  FUNC1(pNew, 0, sizeof(unicode_tokenizer));
  pNew->eRemoveDiacritic = 1;

  for(i=0; rc==SQLITE_OK && i<nArg; i++){
    const char *z = azArg[i];
    int n = (int)FUNC3(z);

    if( n==19 && FUNC0("remove_diacritics=1", z, 19)==0 ){
      pNew->eRemoveDiacritic = 1;
    }
    else if( n==19 && FUNC0("remove_diacritics=0", z, 19)==0 ){
      pNew->eRemoveDiacritic = 0;
    }
    else if( n==19 && FUNC0("remove_diacritics=2", z, 19)==0 ){
      pNew->eRemoveDiacritic = 2;
    }
    else if( n>=11 && FUNC0("tokenchars=", z, 11)==0 ){
      rc = FUNC4(pNew, 1, &z[11], n-11);
    }
    else if( n>=11 && FUNC0("separators=", z, 11)==0 ){
      rc = FUNC4(pNew, 0, &z[11], n-11);
    }
    else{
      /* Unrecognized argument */
      rc  = SQLITE_ERROR;
    }
  }

  if( rc!=SQLITE_OK ){
    FUNC5((sqlite3_tokenizer *)pNew);
    pNew = 0;
  }
  *pp = (sqlite3_tokenizer *)pNew;
  return rc;
}