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
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  Fts3Table ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int*) ; 
 int FUNC2 (char const*,int,char const*,int,scalar_t__*,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,char**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(
  Fts3Table *p,                   /* Virtual table handle */
  const char *zTerm,              /* Term to select leaves for */
  int nTerm,                      /* Size of term zTerm in bytes */
  const char *zNode,              /* Buffer containing segment interior node */
  int nNode,                      /* Size of buffer at zNode */
  sqlite3_int64 *piLeaf,          /* Selected leaf node */
  sqlite3_int64 *piLeaf2          /* Selected leaf node */
){
  int rc = SQLITE_OK;             /* Return code */
  int iHeight;                    /* Height of this node in tree */

  FUNC0( piLeaf || piLeaf2 );

  FUNC1(zNode, &iHeight);
  rc = FUNC2(zTerm, nTerm, zNode, nNode, piLeaf, piLeaf2);
  FUNC0( !piLeaf2 || !piLeaf || rc!=SQLITE_OK || (*piLeaf<=*piLeaf2) );

  if( rc==SQLITE_OK && iHeight>1 ){
    char *zBlob = 0;              /* Blob read from %_segments table */
    int nBlob = 0;                /* Size of zBlob in bytes */

    if( piLeaf && piLeaf2 && (*piLeaf!=*piLeaf2) ){
      rc = FUNC3(p, *piLeaf, &zBlob, &nBlob, 0);
      if( rc==SQLITE_OK ){
        rc = FUNC5(p, zTerm, nTerm, zBlob, nBlob, piLeaf, 0);
      }
      FUNC4(zBlob);
      piLeaf = 0;
      zBlob = 0;
    }

    if( rc==SQLITE_OK ){
      rc = FUNC3(p, piLeaf?*piLeaf:*piLeaf2, &zBlob, &nBlob, 0);
    }
    if( rc==SQLITE_OK ){
      rc = FUNC5(p, zTerm, nTerm, zBlob, nBlob, piLeaf, piLeaf2);
    }
    FUNC4(zBlob);
  }

  return rc;
}