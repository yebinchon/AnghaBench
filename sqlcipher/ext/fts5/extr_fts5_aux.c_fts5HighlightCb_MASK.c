#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int iStart; int iEnd; } ;
struct TYPE_4__ {int iRangeEnd; int iRangeStart; int iOff; int /*<<< orphan*/ * zClose; TYPE_3__ iter; int /*<<< orphan*/ * zIn; int /*<<< orphan*/ * zOpen; int /*<<< orphan*/  iPos; } ;
typedef  TYPE_1__ HighlightContext ;

/* Variables and functions */
 int FTS5_TOKEN_COLOCATED ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(
  void *pContext,                 /* Pointer to HighlightContext object */
  int tflags,                     /* Mask of FTS5_TOKEN_* flags */
  const char *pToken,             /* Buffer containing token */
  int nToken,                     /* Size of token in bytes */
  int iStartOff,                  /* Start offset of token */
  int iEndOff                     /* End offset of token */
){
  HighlightContext *p = (HighlightContext*)pContext;
  int rc = SQLITE_OK;
  int iPos;

  FUNC0(pToken, nToken);

  if( tflags & FTS5_TOKEN_COLOCATED ) return SQLITE_OK;
  iPos = p->iPos++;

  if( p->iRangeEnd>0 ){
    if( iPos<p->iRangeStart || iPos>p->iRangeEnd ) return SQLITE_OK;
    if( p->iRangeStart && iPos==p->iRangeStart ) p->iOff = iStartOff;
  }

  if( iPos==p->iter.iStart ){
    FUNC2(&rc, p, &p->zIn[p->iOff], iStartOff - p->iOff);
    FUNC2(&rc, p, p->zOpen, -1);
    p->iOff = iStartOff;
  }

  if( iPos==p->iter.iEnd ){
    if( p->iRangeEnd && p->iter.iStart<p->iRangeStart ){
      FUNC2(&rc, p, p->zOpen, -1);
    }
    FUNC2(&rc, p, &p->zIn[p->iOff], iEndOff - p->iOff);
    FUNC2(&rc, p, p->zClose, -1);
    p->iOff = iEndOff;
    if( rc==SQLITE_OK ){
      rc = FUNC1(&p->iter);
    }
  }

  if( p->iRangeEnd>0 && iPos==p->iRangeEnd ){
    FUNC2(&rc, p, &p->zIn[p->iOff], iEndOff - p->iOff);
    p->iOff = iEndOff;
    if( iPos>=p->iter.iStart && iPos<p->iter.iEnd ){
      FUNC2(&rc, p, p->zClose, -1);
    }
  }

  return rc;
}