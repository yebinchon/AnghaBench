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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 () ; 
 char* FUNC2 () ; 

int FUNC3(int argc, char **argv){
  FUNC0("SQLite version %s\n", FUNC1());
  FUNC0("SQLite source  %s\n", FUNC2());
  return 0;
}