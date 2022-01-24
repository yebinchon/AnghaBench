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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_DATA_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (void const*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,unsigned char*,scalar_t__) ; 

int FUNC4(FILE *fp, uint64_t Position,
	const void *pData, uint64_t Len)
{
   int r = 0;
   unsigned char *aucBuf = FUNC1(MAX_DATA_LEN, 16);

   if(aucBuf == NULL)
      return 0;

   if(!FUNC3(fp, Position, aucBuf, Len))
      goto out;

   if(FUNC2(pData, aucBuf, (size_t)Len))
      goto out;

   r = 1;

out:
   FUNC0(aucBuf);
   return r;
}