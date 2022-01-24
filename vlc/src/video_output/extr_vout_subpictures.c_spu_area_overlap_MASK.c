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
struct TYPE_6__ {scalar_t__ height; scalar_t__ y; scalar_t__ width; scalar_t__ x; } ;
typedef  TYPE_1__ spu_area_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 TYPE_1__ FUNC2 (TYPE_1__) ; 

__attribute__((used)) static bool FUNC3(spu_area_t a, spu_area_t b)
{
    a = FUNC2(a);
    b = FUNC2(b);

    return FUNC0(a.x, b.x) < FUNC1(a.x + a.width , b.x + b.width ) &&
           FUNC0(a.y, b.y) < FUNC1(a.y + a.height, b.y + b.height);
}