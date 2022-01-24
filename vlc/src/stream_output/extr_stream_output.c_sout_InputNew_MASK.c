#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int b_flushed; int /*<<< orphan*/ * id; TYPE_2__* p_sout; } ;
typedef  TYPE_1__ sout_packetizer_input_t ;
struct TYPE_13__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_stream; } ;
typedef  TYPE_2__ sout_instance_t ;
struct TYPE_14__ {int /*<<< orphan*/  i_codec; } ;
typedef  TYPE_3__ es_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,void*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

sout_packetizer_input_t *FUNC7( sout_instance_t *p_sout,
                                        const es_format_t *p_fmt )
{
    sout_packetizer_input_t *p_input;

    /* *** create a packetizer input *** */
    if( !p_fmt->i_codec || !(p_input = FUNC1(sizeof(sout_packetizer_input_t))) )
        return NULL;

    p_input->p_sout = p_sout;
    p_input->b_flushed = false;

    FUNC2( p_sout, "adding a new sout input for `%4.4s` (sout_input: %p)",
             (char*) &p_fmt->i_codec, (void *)p_input );

    /* *** add it to the stream chain */
    FUNC5( &p_sout->lock );
    p_input->id = FUNC4( p_sout->p_stream, p_fmt );
    FUNC6( &p_sout->lock );

    if( p_input->id == NULL )
    {
        FUNC3( p_sout, "new sout input failed (sout_input: %p)",
                 (void *)p_input );
        FUNC0( p_input );
        p_input = NULL;
    }

    return( p_input );
}