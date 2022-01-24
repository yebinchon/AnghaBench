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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(char **argv){
  FUNC1(stderr, "\n");
  FUNC1(stderr, "Usage %s ?OPTIONS? DATABASE\n", argv[0]);
  FUNC1(stderr, "\n");
  FUNC1(stderr, "Options are:\n");
  FUNC1(stderr, "  -sql SQL   (analyze SQL statements passed as argument)\n");
  FUNC1(stderr, "  -file FILE (read SQL statements from file FILE)\n");
  FUNC1(stderr, "  -verbose LEVEL (integer verbosity level. default 1)\n");
  FUNC1(stderr, "  -sample PERCENT (percent of db to sample. default 100)\n");
  FUNC0(-1);
}