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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 

void FUNC2(FILE *out, int lineno, char *filename)
{
  FUNC0(out,"#line %d \"",lineno);
  while( *filename ){
    if( *filename == '\\' ) FUNC1('\\',out);
    FUNC1(*filename,out);
    filename++;
  }
  FUNC0(out,"\"\n");
}