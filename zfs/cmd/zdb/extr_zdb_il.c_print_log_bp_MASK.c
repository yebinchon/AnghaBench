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
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  blkbuf ;

/* Variables and functions */
 int BP_SPRINTF_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC2(const blkptr_t *bp, const char *prefix)
{
	char blkbuf[BP_SPRINTF_LEN];

	FUNC1(blkbuf, sizeof (blkbuf), bp);
	(void) FUNC0("%s%s\n", prefix, blkbuf);
}