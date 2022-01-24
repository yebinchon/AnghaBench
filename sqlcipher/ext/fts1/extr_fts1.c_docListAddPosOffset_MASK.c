#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ iType; int iLastOffset; } ;
typedef  TYPE_1__ DocList ;

/* Variables and functions */
 scalar_t__ DL_POSITIONS ; 
 scalar_t__ DL_POSITIONS_OFFSETS ; 
 int POS_END ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(
  DocList *d,             /* Doclist under construction */
  int iColumn,            /* Column the inserted term is part of */
  int iPos,               /* Position of the inserted term */
  int iStartOffset,       /* Starting offset of inserted term */
  int iEndOffset          /* Ending offset of inserted term */
){
  FUNC2( d->iType>=DL_POSITIONS );
  FUNC0(d, iColumn, iPos);
  if( d->iType==DL_POSITIONS_OFFSETS ){
    FUNC2( iStartOffset>=d->iLastOffset );
    FUNC1(d, iStartOffset-d->iLastOffset);
    d->iLastOffset = iStartOffset;
    FUNC2( iEndOffset>=iStartOffset );
    FUNC1(d, iEndOffset-iStartOffset);
  }
  FUNC1(d, POS_END);  /* add new terminator */
}