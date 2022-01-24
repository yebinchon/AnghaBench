#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_5__ {int /*<<< orphan*/ * p_dec; } ;
typedef  TYPE_1__ cea708_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 

cea708_t * FUNC2( decoder_t *p_dec )
{
    cea708_t *p_cea708 = FUNC1( sizeof(cea708_t) );
    if( p_cea708 )
    {
        FUNC0( p_cea708 );
        p_cea708->p_dec = p_dec;
    }
    return p_cea708;
}