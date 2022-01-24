#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite_int64 ;
struct TYPE_3__ {scalar_t__ iType; scalar_t__ iPrevDocid; int /*<<< orphan*/  b; } ;
typedef  TYPE_1__ DLWriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,int,scalar_t__*) ; 
 scalar_t__ DL_DOCIDS ; 
 int VARINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char const*,int) ; 
 int FUNC4 (char const*,scalar_t__*) ; 
 int FUNC5 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(DLWriter *pWriter,
                      const char *pData, int nData,
                      sqlite_int64 iFirstDocid, sqlite_int64 iLastDocid){
  sqlite_int64 iDocid = 0;
  char c[VARINT_MAX];
  int nFirstOld, nFirstNew;     /* Old and new varint len of first docid. */
#ifndef NDEBUG
  sqlite_int64 iLastDocidDelta;
#endif

  /* Recode the initial docid as delta from iPrevDocid. */
  nFirstOld = FUNC4(pData, &iDocid);
  FUNC1( nFirstOld<nData || (nFirstOld==nData && pWriter->iType==DL_DOCIDS) );
  nFirstNew = FUNC5(c, iFirstDocid-pWriter->iPrevDocid);

  /* Verify that the incoming doclist is valid AND that it ends with
  ** the expected docid.  This is essential because we'll trust this
  ** docid in future delta-encoding.
  */
  FUNC0(pWriter->iType, pData, nData, &iLastDocidDelta);
  FUNC1( iLastDocid==iFirstDocid-iDocid+iLastDocidDelta );

  /* Append recoded initial docid and everything else.  Rest of docids
  ** should have been delta-encoded from previous initial docid.
  */
  if( nFirstOld<nData ){
    FUNC3(pWriter->b, c, nFirstNew,
                      pData+nFirstOld, nData-nFirstOld);
  }else{
    FUNC2(pWriter->b, c, nFirstNew);
  }
  pWriter->iPrevDocid = iLastDocid;
}