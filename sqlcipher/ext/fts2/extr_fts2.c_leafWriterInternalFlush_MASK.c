#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite_int64 ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_4__ {int nData; char* pData; } ;
struct TYPE_5__ {int nTermDistinct; int has_parent; scalar_t__ iEndBlockid; scalar_t__ iStartBlockid; int /*<<< orphan*/  parentWriter; TYPE_1__ data; } ;
typedef  TYPE_2__ LeafWriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,scalar_t__*) ; 
 int FUNC3 (char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char const*,int,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(fulltext_vtab *v, LeafWriter *pWriter,
                                   int iData, int nData){
  sqlite_int64 iBlockid = 0;
  const char *pStartingTerm;
  int nStartingTerm, rc, n;

  /* Must have the leading varint(0) flag, plus at least some
  ** valid-looking data.
  */
  FUNC1( nData>2 );
  FUNC1( iData>=0 );
  FUNC1( iData+nData<=pWriter->data.nData );
  FUNC0(pWriter->data.pData+iData, nData);

  rc = FUNC2(v, pWriter->data.pData+iData, nData, &iBlockid);
  if( rc!=SQLITE_OK ) return rc;
  FUNC1( iBlockid!=0 );

  /* Reconstruct the first term in the leaf for purposes of building
  ** the interior node.
  */
  n = FUNC3(pWriter->data.pData+iData+1, &nStartingTerm);
  pStartingTerm = pWriter->data.pData+iData+1+n;
  FUNC1( pWriter->data.nData>iData+1+n+nStartingTerm );
  FUNC1( pWriter->nTermDistinct>0 );
  FUNC1( pWriter->nTermDistinct<=nStartingTerm );
  nStartingTerm = pWriter->nTermDistinct;

  if( pWriter->has_parent ){
    FUNC4(&pWriter->parentWriter,
                         pStartingTerm, nStartingTerm, iBlockid);
  }else{
    FUNC5(1, pStartingTerm, nStartingTerm, iBlockid,
                       &pWriter->parentWriter);
    pWriter->has_parent = 1;
  }

  /* Track the span of this segment's leaf nodes. */
  if( pWriter->iEndBlockid==0 ){
    pWriter->iEndBlockid = pWriter->iStartBlockid = iBlockid;
  }else{
    pWriter->iEndBlockid++;
    FUNC1( iBlockid==pWriter->iEndBlockid );
  }

  return SQLITE_OK;
}