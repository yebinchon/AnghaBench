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
typedef  int /*<<< orphan*/  sqlite3_uint64 ;
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_4__ {scalar_t__ n; scalar_t__ nAlloc; scalar_t__ a; } ;
typedef  TYPE_1__ lsm1_vblob ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC2(lsm1_vblob *p, sqlite3_uint64 x){
  sqlite3_int64 n = p->n;
  if( n+9>p->nAlloc && FUNC1(p, 9) ) return;
  p->n += FUNC0(p->a+p->n, x);
}