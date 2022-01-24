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
typedef  scalar_t__ ULONG_PTR ;
typedef  int ULONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(char *buffer, ULONG size)
{
  ULONG offset = 0;
  unsigned char *ptr;

  while (offset < (size & ~15))
    {
      ptr = (unsigned char*)((ULONG_PTR)buffer + offset);
      FUNC1("%08lx  %02hx %02hx %02hx %02hx %02hx %02hx %02hx %02hx-%02hx %02hx %02hx %02hx %02hx %02hx %02hx %02hx",
	     offset,
	     ptr[0],
	     ptr[1],
	     ptr[2],
	     ptr[3],
	     ptr[4],
	     ptr[5],
	     ptr[6],
	     ptr[7],
	     ptr[8],
	     ptr[9],
	     ptr[10],
	     ptr[11],
	     ptr[12],
	     ptr[13],
	     ptr[14],
	     ptr[15]);

      FUNC1("  %c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c\n",
	     FUNC0(ptr[0])?ptr[0]:'.',
	     FUNC0(ptr[1])?ptr[1]:'.',
	     FUNC0(ptr[2])?ptr[2]:'.',
	     FUNC0(ptr[3])?ptr[3]:'.',
	     FUNC0(ptr[4])?ptr[4]:'.',
	     FUNC0(ptr[5])?ptr[5]:'.',
	     FUNC0(ptr[6])?ptr[6]:'.',
	     FUNC0(ptr[7])?ptr[7]:'.',
	     FUNC0(ptr[8])?ptr[8]:'.',
	     FUNC0(ptr[9])?ptr[9]:'.',
	     FUNC0(ptr[10])?ptr[10]:'.',
	     FUNC0(ptr[11])?ptr[11]:'.',
	     FUNC0(ptr[12])?ptr[12]:'.',
	     FUNC0(ptr[13])?ptr[13]:'.',
	     FUNC0(ptr[14])?ptr[14]:'.',
	     FUNC0(ptr[15])?ptr[15]:'.');

      offset += 16;
    }

  ptr = (unsigned char*)((ULONG_PTR)buffer + offset);
  if (offset < size)
    {
      FUNC1("%08lx ", offset);
      while (offset < size)
	{
	  FUNC1(" %02hx", *ptr);
	  offset++;
	  ptr++;
	}
    }

  FUNC1("\n\n");
}