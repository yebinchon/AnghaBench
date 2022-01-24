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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  Vdbe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(
  Vdbe *p,            /* Add the opcode to this VM */
  int op,             /* The new opcode */
  int p1,             /* The P1 operand */
  int p2,             /* The P2 operand */
  int p3,             /* The P3 operand */
  const u8 *zP4,      /* The P4 operand */
  int p4type          /* P4 operand type */
){
  char *p4copy = FUNC1(FUNC3(p), 8);
  if( p4copy ) FUNC0(p4copy, zP4, 8);
  return FUNC2(p, op, p1, p2, p3, p4copy, p4type);
}