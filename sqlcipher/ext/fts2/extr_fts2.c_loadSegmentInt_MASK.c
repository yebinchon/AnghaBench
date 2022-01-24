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
typedef  scalar_t__ sqlite_int64 ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
typedef  int /*<<< orphan*/  DataBuffer ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char const*,int,int,scalar_t__*,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,char const*,int,int,scalar_t__*,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int,char const*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,char const*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(fulltext_vtab *v, const char *pData, int nData,
                          sqlite_int64 iLeavesEnd,
                          const char *pTerm, int nTerm, int isPrefix,
                          DataBuffer *out){
  /* Special case where root is a leaf. */
  if( *pData=='\0' ){
    return FUNC3(v, pData, nData, pTerm, nTerm, isPrefix, out);
  }else{
    int rc;
    sqlite_int64 iStartChild, iEndChild;

    /* Process pData as an interior node, then loop down the tree
    ** until we find the set of leaf nodes to scan for the term.
    */
    FUNC1(pData, nData, pTerm, nTerm, isPrefix,
                          &iStartChild, &iEndChild);
    while( iStartChild>iLeavesEnd ){
      sqlite_int64 iNextStart, iNextEnd;
      rc = FUNC2(v, iStartChild, pTerm, nTerm, isPrefix,
                                        &iNextStart, &iNextEnd);
      if( rc!=SQLITE_OK ) return rc;

      /* If we've branched, follow the end branch, too. */
      if( iStartChild!=iEndChild ){
        sqlite_int64 iDummy;
        rc = FUNC2(v, iEndChild, pTerm, nTerm, isPrefix,
                                          &iDummy, &iNextEnd);
        if( rc!=SQLITE_OK ) return rc;
      }

      FUNC0( iNextStart<=iNextEnd );
      iStartChild = iNextStart;
      iEndChild = iNextEnd;
    }
    FUNC0( iStartChild<=iLeavesEnd );
    FUNC0( iEndChild<=iLeavesEnd );

    /* Scan through the leaf segments for doclists. */
    return FUNC4(v, iStartChild, iEndChild,
                             pTerm, nTerm, isPrefix, out);
  }
}