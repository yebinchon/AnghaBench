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
struct TYPE_4__ {void* yMax; void* xMax; void* yMin; void* xMin; } ;
typedef  TYPE_1__ FT_BBox ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 void* FUNC1 (void*,void*) ; 

__attribute__((used)) static inline void FUNC2( FT_BBox *p_max, const FT_BBox *p )
{
    p_max->xMin = FUNC1(p_max->xMin, p->xMin);
    p_max->yMin = FUNC1(p_max->yMin, p->yMin);
    p_max->xMax = FUNC0(p_max->xMax, p->xMax);
    p_max->yMax = FUNC0(p_max->yMax, p->yMax);
}