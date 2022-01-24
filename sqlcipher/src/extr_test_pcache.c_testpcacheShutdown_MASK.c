#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ pDummy; scalar_t__ nInstance; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__ testpcacheGlobal ; 

__attribute__((used)) static void FUNC2(void *pArg){
  FUNC0( pArg==(void*)&testpcacheGlobal );
  FUNC0( testpcacheGlobal.pDummy!=0 );
  FUNC0( testpcacheGlobal.nInstance==0 );
  FUNC1( testpcacheGlobal.pDummy );
  testpcacheGlobal.pDummy = 0;
}