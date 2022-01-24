#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct Fts3Index {int nPrefix; } ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const**,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct Fts3Index*,int /*<<< orphan*/ ,int) ; 
 struct Fts3Index* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(
  const char *zParam,             /* ABC in prefix=ABC parameter to parse */
  int *pnIndex,                   /* OUT: size of *apIndex[] array */
  struct Fts3Index **apIndex      /* OUT: Array of indexes for this table */
){
  struct Fts3Index *aIndex;       /* Allocated array */
  int nIndex = 1;                 /* Number of entries in array */

  if( zParam && zParam[0] ){
    const char *p;
    nIndex++;
    for(p=zParam; *p; p++){
      if( *p==',' ) nIndex++;
    }
  }

  aIndex = FUNC3(sizeof(struct Fts3Index) * nIndex);
  *apIndex = aIndex;
  if( !aIndex ){
    return SQLITE_NOMEM;
  }

  FUNC2(aIndex, 0, sizeof(struct Fts3Index) * nIndex);
  if( zParam ){
    const char *p = zParam;
    int i;
    for(i=1; i<nIndex; i++){
      int nPrefix = 0;
      if( FUNC1(&p, &nPrefix) ) return SQLITE_ERROR;
      FUNC0( nPrefix>=0 );
      if( nPrefix==0 ){
        nIndex--;
        i--;
      }else{
        aIndex[i].nPrefix = nPrefix;
      }
      p++;
    }
  }

  *pnIndex = nIndex;
  return SQLITE_OK;
}