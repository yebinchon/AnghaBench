#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ szMalloc; int /*<<< orphan*/  flags; TYPE_1__* db; } ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ Mem ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_Null ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(Mem *pTo, Mem *pFrom){
  FUNC0( pFrom->db==0 || FUNC3(pFrom->db->mutex) );
  FUNC0( pTo->db==0 || FUNC3(pTo->db->mutex) );
  FUNC0( pFrom->db==0 || pTo->db==0 || pFrom->db==pTo->db );

  FUNC2(pTo);
  FUNC1(pTo, pFrom, sizeof(Mem));
  pFrom->flags = MEM_Null;
  pFrom->szMalloc = 0;
}