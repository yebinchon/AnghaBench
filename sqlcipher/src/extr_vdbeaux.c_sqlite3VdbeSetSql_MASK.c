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
typedef  int u8 ;
struct TYPE_3__ {int prepFlags; scalar_t__ zSql; int /*<<< orphan*/  db; scalar_t__ expmask; } ;
typedef  TYPE_1__ Vdbe ;

/* Variables and functions */
 int SQLITE_PREPARE_SAVESQL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

void FUNC2(Vdbe *p, const char *z, int n, u8 prepFlags){
  if( p==0 ) return;
  p->prepFlags = prepFlags;
  if( (prepFlags & SQLITE_PREPARE_SAVESQL)==0 ){
    p->expmask = 0;
  }
  FUNC0( p->zSql==0 );
  p->zSql = FUNC1(p->db, z, n);
}