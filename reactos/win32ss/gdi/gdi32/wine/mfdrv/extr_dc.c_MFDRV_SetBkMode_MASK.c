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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  PHYSDEV ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  META_SETBKMODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

INT FUNC1( PHYSDEV dev, INT mode )
{
    return FUNC0( dev, META_SETBKMODE, (WORD)mode) ? mode : 0;
}