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
struct TYPE_7__ {TYPE_1__** apHash; int /*<<< orphan*/  nHash; } ;
struct TYPE_6__ {scalar_t__ iPg; scalar_t__ nRef; int flags; struct TYPE_6__* pHashNext; } ;
typedef  TYPE_1__ Page ;
typedef  scalar_t__ LsmPgno ;
typedef  TYPE_2__ FileSystem ;

/* Variables and functions */
 int PAGE_FREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(FileSystem *pFS, LsmPgno iPg){
  Page *p;
  int iHash = FUNC1(pFS->nHash, iPg);

  for(p=pFS->apHash[iHash]; p && p->iPg!=iPg; p=p->pHashNext);

  if( p ){
    FUNC0( p->nRef==0 || (p->flags & PAGE_FREE)==0 );
    FUNC2(pFS, p);
    p->iPg = 0;
    iHash = FUNC1(pFS->nHash, 0);
    p->pHashNext = pFS->apHash[iHash];
    pFS->apHash[iHash] = p;
  }
}