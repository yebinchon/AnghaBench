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
struct TYPE_4__ {int i_title; int /*<<< orphan*/ * title; scalar_t__ p_demux; } ;
typedef  TYPE_1__ input_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( input_source_t *in )
{
    int i;

    if( in->p_demux )
        FUNC1( in->p_demux );

    if( in->i_title > 0 )
    {
        for( i = 0; i < in->i_title; i++ )
            FUNC3( in->title[i] );
        FUNC0( in->i_title, in->title );
    }

    FUNC2( in );
}