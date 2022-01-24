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
 int FUNC0 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*,int) ; 

int FUNC2(
  Vdbe *p,            /* Add the opcode to this VM */
  int op,             /* The new opcode */
  int p1,             /* The P1 operand */
  int p2,             /* The P2 operand */
  int p3,             /* The P3 operand */
  const char *zP4,    /* The P4 operand */
  int p4type          /* P4 operand type */
){
  int addr = FUNC0(p, op, p1, p2, p3);
  FUNC1(p, addr, zP4, p4type);
  return addr;
}