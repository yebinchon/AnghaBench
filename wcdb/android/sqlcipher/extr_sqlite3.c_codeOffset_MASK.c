#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;

/* Variables and functions */
 int /*<<< orphan*/  OP_IfPos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC3(
  Vdbe *v,          /* Generate code into this VM */
  int iOffset,      /* Register holding the offset counter */
  int iContinue     /* Jump here to skip the current record */
){
  if( iOffset>0 ){
    FUNC2(v, OP_IfPos, iOffset, iContinue, 1); FUNC1(v);
    FUNC0((v, "OFFSET"));
  }
}