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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 

int FUNC2(char *batch_file, char *command)
{
   char buffer[4096];
   if (batch_file[0]) {
      FUNC0(buffer, "%s && %s", batch_file, command);
      return FUNC1(buffer) == 0;
   } else {
      return FUNC1(command) == 0;
   }
}