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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char const* FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

const char *FUNC2(FILE *fp)
{
   uint16_t t = FUNC1(fp);
   switch(t)
   {
      case 0:
	 return FUNC0("not copy protected");
      case 0x5a5a:
	 return FUNC0("copy protected");
      default:
	 return FUNC0("unknown value");
   }
}