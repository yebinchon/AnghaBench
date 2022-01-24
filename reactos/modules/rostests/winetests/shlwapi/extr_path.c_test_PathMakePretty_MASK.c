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
 scalar_t__ FALSE ; 
 int MAX_PATH ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
   char buff[MAX_PATH];

   FUNC1 (FUNC0(NULL) == FALSE, "PathMakePretty: NULL path succeeded\n");
   buff[0] = '\0';
   FUNC1 (FUNC0(buff) == TRUE, "PathMakePretty: Empty path failed\n");

   FUNC3(buff, "C:\\A LONG FILE NAME WITH \\SPACES.TXT");
   FUNC1 (FUNC0(buff) == TRUE, "PathMakePretty: Long UC name failed\n");
   FUNC1 (FUNC2(buff, "C:\\a long file name with \\spaces.txt") == 0,
       "PathMakePretty: Long UC name not changed\n");

   FUNC3(buff, "C:\\A LONG FILE NAME WITH \\MixedCase.TXT");
   FUNC1 (FUNC0(buff) == FALSE, "PathMakePretty: Long MC name succeeded\n");
   FUNC1 (FUNC2(buff, "C:\\A LONG FILE NAME WITH \\MixedCase.TXT") == 0,
       "PathMakePretty: Failed but modified path\n");

   FUNC3(buff, "TEST");
   FUNC1 (FUNC0(buff) == TRUE,  "PathMakePretty: Short name failed\n");
   FUNC1 (FUNC2(buff, "Test") == 0,  "PathMakePretty: 1st char lowercased %s\n", buff);
}