#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ wantToLock; scalar_t__ sharable; TYPE_1__* db; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ Btree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(Btree *p){
  FUNC0( FUNC1(p->db->mutex) );
  if( p->sharable ){
    FUNC0( p->wantToLock>0 );
    p->wantToLock--;
    if( p->wantToLock==0 ){
      FUNC2(p);
    }
  }
}