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
typedef  int /*<<< orphan*/  stbi ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*,int*,int*) ; 

int FUNC4(FILE *f, int *x, int *y, int *comp)
{
   int r;
   stbi s;
   long pos = FUNC1(f);
   FUNC2(&s, f);
   r = FUNC3(&s,x,y,comp);
   FUNC0(f,pos,SEEK_SET);
   return r;
}