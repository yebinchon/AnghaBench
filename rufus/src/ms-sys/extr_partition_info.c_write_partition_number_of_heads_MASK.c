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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,unsigned char*,int) ; 

int FUNC1(FILE *fp, int iHeads)
{
   unsigned char aucBuf[2];
   unsigned short s = (unsigned short) iHeads;

   if(!s)
      return 0;
   /* Converting a number like this is not necessary as long as we are on
      i386 compatible CPUs, however, the following code might make the program
      more portable... */
   aucBuf[0] = (unsigned char)(s & 0xff);
   aucBuf[1] = (unsigned char)((s & 0xff00) >> 8);
   return FUNC0(fp, 0x1a, aucBuf, 2);
}