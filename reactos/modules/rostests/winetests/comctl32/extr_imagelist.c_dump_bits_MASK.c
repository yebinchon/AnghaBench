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
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(const BYTE *p, const BYTE *q, int size)
{
  int i, j;

  size /= 8;

  for (i = 0; i < size * 2; i++)
  {
      FUNC0("|");
      for (j = 0; j < size; j++)
          FUNC0("%c%c", p[j] & 0xf0 ? 'X' : ' ', p[j] & 0xf ? 'X' : ' ');
      FUNC0(" -- ");
      for (j = 0; j < size; j++)
          FUNC0("%c%c", q[j] & 0xf0 ? 'X' : ' ', q[j] & 0xf ? 'X' : ' ');
      FUNC0("|\n");
      p += size * 4;
      q += size * 4;
  }
  FUNC0("\n");
}