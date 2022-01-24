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
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int FUNC4(int argc, char **argv)
{
   if (argc != 2)
   {
      FUNC3("Usage: %s test_name\n\n", argv[0]);
      FUNC3("Valid test names:\n");
      FUNC3("\tsocket\n");
      FUNC3("\tvirtual\n");
      return 0;
   }

   if (!FUNC2(argv[1], "socket"))
      return FUNC0();
   if (!FUNC2(argv[1], "virtual"))
      return FUNC1();

   FUNC3("Test '%s' doesn't exist\n", argv[1]);

   return 0;
}