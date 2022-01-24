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
typedef  int loff_t ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 long FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static long
FUNC4 (char *buffer, int try, unsigned int current_block)
{
  long got;

  if (FUNC1 (dev, (loff_t)current_block * BLOCK_SIZE, SEEK_SET) /* Seek to the correct location */
      != (loff_t)current_block * BLOCK_SIZE)
    FUNC0 ("seek failed during testing for blocks");

  got = FUNC3 (dev, buffer, try * BLOCK_SIZE);	/* Try reading! */
  if (got < 0)
    got = 0;

  if (got & (BLOCK_SIZE - 1))
    FUNC2 ("Unexpected values in do_check: probably bugs\n");
  got /= BLOCK_SIZE;

  return got;
}