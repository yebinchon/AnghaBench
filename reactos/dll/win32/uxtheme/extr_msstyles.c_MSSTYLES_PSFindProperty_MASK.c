#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  properties; } ;
typedef  int /*<<< orphan*/  PTHEME_PROPERTY ;
typedef  TYPE_1__* PTHEME_PARTSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline PTHEME_PROPERTY FUNC1(PTHEME_PARTSTATE ps, int iPropertyPrimitive, int iPropertyId)
{
    return FUNC0(ps->properties, iPropertyPrimitive, iPropertyId);
}