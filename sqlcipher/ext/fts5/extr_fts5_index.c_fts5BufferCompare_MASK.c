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
struct TYPE_4__ {int n; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ Fts5Buffer ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(Fts5Buffer *pLeft, Fts5Buffer *pRight){
  int nCmp = FUNC0(pLeft->n, pRight->n);
  int res = FUNC1(pLeft->p, pRight->p, nCmp);
  return (res==0 ? (pLeft->n - pRight->n) : res);
}