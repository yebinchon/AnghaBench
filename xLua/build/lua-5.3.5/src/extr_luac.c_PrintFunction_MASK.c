#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sizep; struct TYPE_6__** p; } ;
typedef  TYPE_1__ Proto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 

__attribute__((used)) static void FUNC3(const Proto* f, int full)
{
 int i,n=f->sizep;
 FUNC2(f);
 FUNC0(f);
 if (full) FUNC1(f);
 for (i=0; i<n; i++) FUNC3(f->p[i],full);
}