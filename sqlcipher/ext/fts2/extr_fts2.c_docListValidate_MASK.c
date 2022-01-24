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
typedef  scalar_t__ DocListType ;

/* Variables and functions */
 scalar_t__ DL_DOCIDS ; 
 scalar_t__ DL_POSITIONS ; 
 int POS_COLUMN ; 
 int POS_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,scalar_t__*) ; 
 scalar_t__ FUNC2 (char const*,int*) ; 

__attribute__((used)) static void FUNC3(DocListType iType, const char *pData, int nData,
                            sqlite_int64 *pLastDocid){
  sqlite_int64 iPrevDocid = 0;
  FUNC0( nData>0 );
  FUNC0( pData!=0 );
  FUNC0( pData+nData>pData );
  while( nData!=0 ){
    sqlite_int64 iDocidDelta;
    int n = FUNC1(pData, &iDocidDelta);
    iPrevDocid += iDocidDelta;
    if( iType>DL_DOCIDS ){
      int iDummy;
      while( 1 ){
        n += FUNC2(pData+n, &iDummy);
        if( iDummy==POS_END ) break;
        if( iDummy==POS_COLUMN ){
          n += FUNC2(pData+n, &iDummy);
        }else if( iType>DL_POSITIONS ){
          n += FUNC2(pData+n, &iDummy);
          n += FUNC2(pData+n, &iDummy);
        }
        FUNC0( n<=nData );
      }
    }
    FUNC0( n<=nData );
    pData += n;
    nData -= n;
  }
  if( pLastDocid ) *pLastDocid = iPrevDocid;
}