#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_5__ {int /*<<< orphan*/  p_parser_ctx; int /*<<< orphan*/  p_codec_ctx; } ;
typedef  TYPE_2__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4( vlc_object_t *p_this )
{
    decoder_t     *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;
    if (FUNC3( p_sys != NULL ))
    {
        FUNC1( &p_sys->p_codec_ctx );
        FUNC0( p_sys->p_parser_ctx );
        FUNC2( p_sys );
    }
}