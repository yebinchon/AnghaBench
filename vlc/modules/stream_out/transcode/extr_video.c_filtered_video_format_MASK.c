#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_format_t ;
struct TYPE_6__ {int /*<<< orphan*/  const* p_f_chain; int /*<<< orphan*/  const* p_conv_nonstatic; int /*<<< orphan*/  const* p_conv_static; int /*<<< orphan*/  const* p_uf_chain; int /*<<< orphan*/  const* p_final_conv_static; } ;
typedef  TYPE_1__ sout_stream_id_sys_t ;
struct TYPE_7__ {int /*<<< orphan*/  const format; } ;
typedef  TYPE_2__ picture_t ;
typedef  int /*<<< orphan*/  filter_chain_t ;
struct TYPE_8__ {int /*<<< orphan*/  const video; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const video_format_t* FUNC3( sout_stream_id_sys_t *id,
                                                  picture_t *p_pic )
{
    FUNC1( id && p_pic );
    const filter_chain_t * chains[] =
    {
        id->p_final_conv_static,
        id->p_uf_chain,
        id->p_conv_static,
        id->p_conv_nonstatic,
        id->p_f_chain,
    };
    for( size_t i=0; i<FUNC0(chains); i++ )
    {
        if( chains[i] )
            return &FUNC2( chains[i] )->video;
    }
    return &p_pic->format;
}