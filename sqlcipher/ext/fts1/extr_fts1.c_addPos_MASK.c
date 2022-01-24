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
struct TYPE_4__ {scalar_t__ nData; int iLastColumn; int iLastPos; int iLastOffset; } ;
typedef  TYPE_1__ DocList ;

/* Variables and functions */
 int POS_BASE ; 
 int POS_COLUMN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(DocList *d, int iColumn, int iPos){
  FUNC1( d->nData>0 );
  --d->nData;  /* remove previous terminator */
  if( iColumn!=d->iLastColumn ){
    FUNC1( iColumn>d->iLastColumn );
    FUNC0(d, POS_COLUMN);
    FUNC0(d, iColumn);
    d->iLastColumn = iColumn;
    d->iLastPos = d->iLastOffset = 0;
  }
  FUNC1( iPos>=d->iLastPos );
  FUNC0(d, iPos-d->iLastPos+POS_BASE);
  d->iLastPos = iPos;
}