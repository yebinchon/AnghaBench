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
typedef  int /*<<< orphan*/  sout_stream_t ;
struct TYPE_3__ {scalar_t__ encoder; } ;
typedef  TYPE_1__ sout_stream_id_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3( sout_stream_t *p_stream, sout_stream_id_sys_t *id)
{
    FUNC0(p_stream);

    /* Close encoder */
    if( id->encoder )
    {
        FUNC1( id->encoder );
        FUNC2( id->encoder );
    }
}