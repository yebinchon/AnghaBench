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
 int MEGABYTES ; 
 int /*<<< orphan*/  N_BUF ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC5 ( int argc, char** argv )
{
   int ii, kk, p;
   FUNC4(1);
   FUNC3 ( stdout, buf, N_BUF );
   for (kk = 0; kk < MEGABYTES * 515; kk+=3) {
      p = 25+FUNC2()%50;
      for (ii = 0; ii < p; ii++)
         FUNC1 ( "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" );
      for (ii = 0; ii < p-1; ii++)
         FUNC1 ( "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb" );
      for (ii = 0; ii < p+1; ii++)
         FUNC1 ( "ccccccccccccccccccccccccccccccccccccc" );
   }
   FUNC0(stdout);
   return 0;
}