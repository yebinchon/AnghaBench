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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ BC_ISNUM ; 
 scalar_t__ BC_ISTYPE ; 
 int /*<<< orphan*/  LJ_DUALNUM ; 
 size_t FUNC0 (int,int) ; 
 int LJ_TNUMX ; 
 scalar_t__ libbc_endian ; 
 scalar_t__* FUNC1 (scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void FUNC2(uint8_t *p)
{
  uint32_t i, sizebc;
  p += 4;
  p = FUNC1(p, &sizebc);
  p = FUNC1(p, &sizebc);
  p = FUNC1(p, &sizebc);
  for (i = 0; i < sizebc; i++, p += 4) {
    uint8_t op = p[libbc_endian ? 3 : 0];
    uint8_t ra = p[libbc_endian ? 2 : 1];
    uint8_t rc = p[libbc_endian ? 1 : 2];
    uint8_t rb = p[libbc_endian ? 0 : 3];
    if (!LJ_DUALNUM && op == BC_ISTYPE && rc == ~LJ_TNUMX+1) {
      op = BC_ISNUM; rc++;
    }
    p[FUNC0(0, 3)] = op;
    p[FUNC0(1, 2)] = ra;
    p[FUNC0(2, 1)] = rc;
    p[FUNC0(3, 0)] = rb;
  }
}