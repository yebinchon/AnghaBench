#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nOpen; TYPE_2__* pClosable; } ;
typedef  TYPE_1__ UnionTab ;
struct TYPE_7__ {scalar_t__ db; struct TYPE_7__* pNextClosable; } ;
typedef  TYPE_2__ UnionSrc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(UnionTab *pTab, int nMax){
  while( pTab->pClosable && pTab->nOpen>nMax ){
    UnionSrc *p;
    UnionSrc **pp;
    for(pp=&pTab->pClosable; (*pp)->pNextClosable; pp=&(*pp)->pNextClosable);
    p = *pp;
    FUNC0( p->db );
    FUNC1(p->db);
    p->db = 0;
    *pp = 0;
    pTab->nOpen--;
    FUNC2(pTab, p, 1, 0);
  }
}