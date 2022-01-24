#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* aPage; scalar_t__ zErr; } ;
typedef  TYPE_1__ GState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(GState *p, int pgno){
  if( p->zErr ) return;
  FUNC2(p, pgno);
  if( p->zErr ) return;
  if( p->aPage[0]==5 ){
    FUNC3(p);
  }else if( p->aPage[0]==13 ){
    FUNC4(p);
  }else{
    FUNC0(p, "page %d has a faulty type byte: %d", pgno, p->aPage[0]);
  }
  FUNC1(p);
}