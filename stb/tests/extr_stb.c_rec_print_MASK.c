#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* relpath; float weight; struct TYPE_4__** files; struct TYPE_4__** subdirs; } ;
typedef  TYPE_1__ stb_dirtree2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (TYPE_1__**) ; 

void FUNC2(stb_dirtree2 *d, int depth)
{
   int i;
   for (i=0; i < depth; ++i) FUNC0("  ");
   FUNC0("%s (%d)\n", d->relpath, FUNC1(d->files));
   for (i=0; i < FUNC1(d->subdirs); ++i)
      FUNC2(d->subdirs[i], depth+1);
   d->weight = (float) FUNC1(d->files);
}