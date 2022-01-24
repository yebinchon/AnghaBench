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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t FUNC1 (unsigned char*,int,int /*<<< orphan*/ ) ; 

int FUNC2(int argc, char **argv)
{
  unsigned char mem[64];
  int i,j;
  for (i=0; i < 64; ++i) mem[i] = i;
  for (i=0; i < 64; ++i) {
    size_t hash = FUNC1(mem, i, 0);
    FUNC0("  { ");
    for (j=0; j < 8; ++j)
      FUNC0("0x%02x, ", (unsigned char) ((hash >> (j*8)) & 255));
    FUNC0(" },\n");
  }
  return 0;
}