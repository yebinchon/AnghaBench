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
struct TYPE_3__ {struct TYPE_3__* p_prev_s16_buff; struct TYPE_3__* peaks; } ;
typedef  TYPE_1__ spectrometer_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1( void *data )
{
    spectrometer_data *p_data = data;

    if( p_data != NULL )
    {
        FUNC0( p_data->peaks );
        FUNC0( p_data->p_prev_s16_buff );
        FUNC0( p_data );
    }
}