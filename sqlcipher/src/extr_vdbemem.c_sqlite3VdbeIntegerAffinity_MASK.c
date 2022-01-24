#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
struct TYPE_8__ {scalar_t__ r; scalar_t__ i; } ;
struct TYPE_10__ {int flags; TYPE_1__ u; TYPE_2__* db; } ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ Mem ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 scalar_t__ LARGEST_INT64 ; 
 int /*<<< orphan*/  MEM_Int ; 
 int MEM_Real ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ SMALLEST_INT64 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(Mem *pMem){
  i64 ix;
  FUNC2( pMem->flags & MEM_Real );
  FUNC2( !FUNC4(pMem) );
  FUNC2( pMem->db==0 || FUNC5(pMem->db->mutex) );
  FUNC2( FUNC0(pMem) );

  ix = FUNC3(pMem->u.r);

  /* Only mark the value as an integer if
  **
  **    (1) the round-trip conversion real->int->real is a no-op, and
  **    (2) The integer is neither the largest nor the smallest
  **        possible integer (ticket #3922)
  **
  ** The second and third terms in the following conditional enforces
  ** the second condition under the assumption that addition overflow causes
  ** values to wrap around.
  */
  if( pMem->u.r==ix && ix>SMALLEST_INT64 && ix<LARGEST_INT64 ){
    pMem->u.i = ix;
    FUNC1(pMem, MEM_Int);
  }
}