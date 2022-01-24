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
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* InputHandle ; 
 void* OutputHandle ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int FUNC5(int argc, char* argv[])
{
   int i;

   FUNC0();
   InputHandle = FUNC2(STD_INPUT_HANDLE);
   OutputHandle =  FUNC2(STD_OUTPUT_HANDLE);

   FUNC4("GetCommandLineA() %s\n",FUNC1());
   FUNC3("GetCommandLineA() %s\n",FUNC1());
   FUNC3("argc %d\n", argc);
   for (i=0; i<argc; i++)
     {
        FUNC3("Argv[%d]: %x\n",i,argv[i]);
        FUNC3("Argv[%d]: '%s'\n",i,argv[i]);
     }
   return 0;
}