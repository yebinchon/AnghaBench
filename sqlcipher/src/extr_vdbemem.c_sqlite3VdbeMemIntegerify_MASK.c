#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  i; } ;
struct TYPE_11__ {TYPE_2__ u; TYPE_1__* db; } ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ Mem ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  MEM_Int ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(Mem *pMem){
  FUNC2( pMem->db==0 || FUNC5(pMem->db->mutex) );
  FUNC2( !FUNC4(pMem) );
  FUNC2( FUNC0(pMem) );

  pMem->u.i = FUNC3(pMem);
  FUNC1(pMem, MEM_Int);
  return SQLITE_OK;
}