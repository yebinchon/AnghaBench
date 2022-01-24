#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nCapacity; int /*<<< orphan*/ * pData; scalar_t__ nData; } ;
typedef  TYPE_1__ DataBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(DataBuffer *pBuffer, int nCapacity){
  FUNC0( nCapacity>=0 );
  pBuffer->nData = 0;
  pBuffer->nCapacity = nCapacity;
  pBuffer->pData = nCapacity==0 ? NULL : FUNC1(nCapacity);
}