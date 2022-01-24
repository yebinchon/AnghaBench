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
struct TYPE_4__ {scalar_t__ pData; scalar_t__ pEnv; } ;
typedef  TYPE_1__ LsmBlob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(LsmBlob *pBlob){
  FUNC0( pBlob->pEnv || pBlob->pData==0 );
  if( pBlob->pData ) FUNC1(pBlob->pEnv, pBlob->pData);
  FUNC2(pBlob, 0, sizeof(LsmBlob));
}