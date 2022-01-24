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
 int SECTORS_PER_BLOCK ; 
 int badblocks ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*) ; 

__attribute__((used)) static void
FUNC7 (char *filename)
{
  int i;
  FILE *listfile;
  unsigned long blockno;

  listfile = FUNC3 (filename, "r");
  if (listfile == (FILE *) NULL)
    FUNC0 ("Can't open file of bad blocks");

  while (!FUNC2 (listfile))
    {
      FUNC4 (listfile, "%ld\n", &blockno);
      for (i = 0; i < SECTORS_PER_BLOCK; i++)	/* Mark all of the sectors in the block as bad */
	FUNC5 (blockno * SECTORS_PER_BLOCK + i);
      badblocks++;
    }
  FUNC1 (listfile);

  if (badblocks)
    FUNC6 ("%d bad block%s\n", badblocks,
	    (badblocks > 1) ? "s" : "");
}