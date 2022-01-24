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
 int m_argc ; 
 char** m_argv ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int
FUNC5(
   int argc,
   char *argv[])
{
   m_argc = argc;
   m_argv = argv;

   if (argc >= 2 && (FUNC4(argv[1], "-h") == 0 || FUNC4(argv[1], "--help") == 0))
   {
      FUNC2();
      return 0;
   }
   else if (argc >= 2 && argv[1][0] == '-')
   {
      if (FUNC4(argv[1], "-c") == 0)
      {
         return FUNC1();
      }
      else if (FUNC4(argv[1], "-d") == 0)
      {
         return FUNC0();
      }
      else
      {
         FUNC3("Unknown option: %s\n"
                "Use -h for help.\n",
                argv[1]);
         return -1;
      }
   }

   return FUNC0();
}