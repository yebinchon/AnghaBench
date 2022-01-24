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
typedef  int uint32_t ;
struct continuum {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 

uint32_t
FUNC2(struct continuum *continuum, uint32_t ncontinuum, uint32_t hash)
{
    struct continuum *c;

    FUNC0(continuum != NULL);
    FUNC0(ncontinuum != 0);

    c = continuum + FUNC1() % ncontinuum;

    return c->index;
}