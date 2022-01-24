#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* zParentColumn; struct TYPE_5__* zIdColumn; struct TYPE_5__* zTableName; struct TYPE_5__* zSelf; struct TYPE_5__* zDb; } ;
typedef  TYPE_1__ closure_vtab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(closure_vtab *p){
  if( p ){
    FUNC1(p->zDb);
    FUNC1(p->zSelf);
    FUNC1(p->zTableName);
    FUNC1(p->zIdColumn);
    FUNC1(p->zParentColumn);
    FUNC0(p, 0, sizeof(*p));
    FUNC1(p);
  }
}