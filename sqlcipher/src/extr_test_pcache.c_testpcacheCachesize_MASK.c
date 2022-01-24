#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ iMagic; } ;
typedef  TYPE_1__ testpcache ;
typedef  int /*<<< orphan*/  sqlite3_pcache ;
struct TYPE_4__ {scalar_t__ pDummy; scalar_t__ nInstance; } ;

/* Variables and functions */
 scalar_t__ TESTPCACHE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ testpcacheGlobal ; 

__attribute__((used)) static void FUNC1(sqlite3_pcache *pCache, int newSize){
  testpcache *p = (testpcache*)pCache;
  FUNC0( p->iMagic==TESTPCACHE_VALID );
  FUNC0( testpcacheGlobal.pDummy!=0 );
  FUNC0( testpcacheGlobal.nInstance>0 );
}