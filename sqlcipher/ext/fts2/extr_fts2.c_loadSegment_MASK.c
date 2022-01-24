#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
struct TYPE_10__ {scalar_t__ nPendingData; } ;
typedef  TYPE_1__ fulltext_vtab ;
struct TYPE_11__ {scalar_t__ nData; int /*<<< orphan*/  pData; } ;
typedef  TYPE_2__ DataBuffer ;
typedef  int /*<<< orphan*/  DLReader ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DEFAULT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_1__*,char const*,int,int /*<<< orphan*/ ,char const*,int,int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(fulltext_vtab *v, const char *pData, int nData,
                       sqlite_int64 iLeavesEnd,
                       const char *pTerm, int nTerm, int isPrefix,
                       DataBuffer *out){
  DataBuffer result;
  int rc;

  FUNC0( nData>1 );

  /* This code should never be called with buffered updates. */
  FUNC0( v->nPendingData<0 );

  FUNC2(&result, 0);
  rc = FUNC6(v, pData, nData, iLeavesEnd,
                      pTerm, nTerm, isPrefix, &result);
  if( rc==SQLITE_OK && result.nData>0 ){
    if( out->nData==0 ){
      DataBuffer tmp = *out;
      *out = result;
      result = tmp;
    }else{
      DataBuffer merged;
      DLReader readers[2];

      FUNC4(&readers[0], DL_DEFAULT, out->pData, out->nData);
      FUNC4(&readers[1], DL_DEFAULT, result.pData, result.nData);
      FUNC2(&merged, out->nData+result.nData);
      FUNC5(&merged, readers, 2);
      FUNC1(out);
      *out = merged;
      FUNC3(&readers[0]);
      FUNC3(&readers[1]);
    }
  }
  FUNC1(&result);
  return rc;
}