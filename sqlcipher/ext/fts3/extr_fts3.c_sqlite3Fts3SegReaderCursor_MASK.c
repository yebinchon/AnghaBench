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
struct TYPE_4__ {int nIndex; } ;
typedef  TYPE_1__ Fts3Table ;
typedef  int /*<<< orphan*/  Fts3MultiSegReader ;

/* Variables and functions */
 int FTS3_SEGCURSOR_ALL ; 
 int FTS3_SEGCURSOR_PENDING ; 
 int FTS3_SEGDIR_MAXLEVEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int,int,int,char const*,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC3(
  Fts3Table *p,                   /* FTS3 table handle */
  int iLangid,                    /* Language-id to search */
  int iIndex,                     /* Index to search (from 0 to p->nIndex-1) */
  int iLevel,                     /* Level of segments to scan */
  const char *zTerm,              /* Term to query for */
  int nTerm,                      /* Size of zTerm in bytes */
  int isPrefix,                   /* True for a prefix search */
  int isScan,                     /* True to scan from zTerm to EOF */
  Fts3MultiSegReader *pCsr       /* Cursor object to populate */
){
  FUNC0( iIndex>=0 && iIndex<p->nIndex );
  FUNC0( iLevel==FTS3_SEGCURSOR_ALL
      ||  iLevel==FTS3_SEGCURSOR_PENDING 
      ||  iLevel>=0
  );
  FUNC0( iLevel<FTS3_SEGDIR_MAXLEVEL );
  FUNC0( FTS3_SEGCURSOR_ALL<0 && FTS3_SEGCURSOR_PENDING<0 );
  FUNC0( isPrefix==0 || isScan==0 );

  FUNC2(pCsr, 0, sizeof(Fts3MultiSegReader));
  return FUNC1(
      p, iLangid, iIndex, iLevel, zTerm, nTerm, isPrefix, isScan, pCsr
  );
}