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
struct TYPE_4__ {scalar_t__ nRef; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ KeyInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC2(KeyInfo *p){
  if( p ){
    FUNC0( p->nRef>0 );
    p->nRef--;
    if( p->nRef==0 ) FUNC1(p->db, p);
  }
}