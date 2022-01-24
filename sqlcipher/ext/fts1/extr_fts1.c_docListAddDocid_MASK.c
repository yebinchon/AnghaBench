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
typedef  int /*<<< orphan*/  sqlite_int64 ;
struct TYPE_4__ {scalar_t__ iType; scalar_t__ iLastOffset; scalar_t__ iLastPos; scalar_t__ iLastColumn; } ;
typedef  TYPE_1__ DocList ;

/* Variables and functions */
 scalar_t__ DL_POSITIONS ; 
 int /*<<< orphan*/  POS_END ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(DocList *d, sqlite_int64 iDocid){
  FUNC0(d, iDocid);
  if( d->iType>=DL_POSITIONS ){
    FUNC0(d, POS_END);  /* initially empty position list */
    d->iLastColumn = 0;
    d->iLastPos = d->iLastOffset = 0;
  }
}