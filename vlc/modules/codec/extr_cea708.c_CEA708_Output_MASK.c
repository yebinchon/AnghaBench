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
typedef  int /*<<< orphan*/  subpicture_t ;
struct TYPE_4__ {int /*<<< orphan*/  p_dec; int /*<<< orphan*/  i_clock; } ;
typedef  TYPE_1__ cea708_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( cea708_t *p_cea708 )
{
    FUNC1(FUNC4("@%ld ms\n", FUNC2(p_cea708->i_clock)));
    subpicture_t *p_spu = FUNC0( p_cea708 );
    if( p_spu )
        FUNC3( p_cea708->p_dec, p_spu );
}