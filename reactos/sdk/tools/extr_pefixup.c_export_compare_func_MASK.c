#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ export_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char*) ; 

int FUNC2(const void *a, const void *b)
{
   const export_t *ap = a;
   const export_t *bp = b;
   char *an = FUNC0(ap->name);
   char *bn = FUNC0(bp->name);
   return FUNC1(an, bn);
}