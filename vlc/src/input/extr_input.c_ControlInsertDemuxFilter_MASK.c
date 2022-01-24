#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_3__ {int /*<<< orphan*/ * p_demux; } ;
typedef  TYPE_1__ input_source_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_4__ {TYPE_1__* master; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void FUNC3( input_thread_t* p_input, const char* psz_demux_chain )
{
    input_source_t *p_inputSource = FUNC1(p_input)->master;
    demux_t *p_filtered_demux = FUNC0( p_inputSource->p_demux, psz_demux_chain );
    if ( p_filtered_demux != NULL )
        p_inputSource->p_demux = p_filtered_demux;
    else if ( psz_demux_chain != NULL )
        FUNC2(p_input, "Failed to create demux filter %s", psz_demux_chain);
}