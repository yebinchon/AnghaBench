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
typedef  int uint64_t ;
struct TYPE_5__ {int i_608_channels; int i_708_channels; } ;
struct TYPE_4__ {int /*<<< orphan*/ ** pp_decoder; TYPE_2__ desc; } ;
struct decoder_owner {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_fifo; TYPE_1__ cc; } ;
typedef  int /*<<< orphan*/  decoder_t ;
typedef  TYPE_2__ decoder_cc_desc_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct decoder_owner* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( struct decoder_owner *p_owner, block_t *p_cc,
                           const decoder_cc_desc_t *p_desc )
{
    FUNC4( &p_owner->lock );

    p_owner->cc.desc = *p_desc;

    /* Fanout data to all decoders. We do not know if es_out
       selected 608 or 708. */
    uint64_t i_bitmap = p_owner->cc.desc.i_608_channels |
                        p_owner->cc.desc.i_708_channels;

    for( int i=0; i_bitmap > 0; i_bitmap >>= 1, i++ )
    {
        decoder_t *p_ccdec = p_owner->cc.pp_decoder[i];
        struct decoder_owner *p_ccowner = FUNC3( p_ccdec );
        if( !p_ccdec )
            continue;

        if( i_bitmap > 1 )
        {
            FUNC1( p_ccowner->p_fifo, FUNC0(p_cc) );
        }
        else
        {
            FUNC1( p_ccowner->p_fifo, p_cc );
            p_cc = NULL; /* was last dec */
        }
    }

    FUNC5( &p_owner->lock );

    if( p_cc ) /* can have bitmap set but no created decs */
        FUNC2( p_cc );
}