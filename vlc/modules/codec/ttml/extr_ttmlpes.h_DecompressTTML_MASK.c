#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_6__ {int i_buffer; struct TYPE_6__* p_next; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int) ; 

__attribute__((used)) static block_t * FUNC5( decoder_t *p_dec, const uint8_t *p_data, size_t i_data )
{
    block_t *p_decomp = NULL;
    block_t **pp_append = &p_decomp;

    stream_t *s = FUNC4( p_dec, (uint8_t *) p_data, i_data, true );
    if( !s )
        return NULL;
    stream_t *p_inflate = FUNC3( s, "inflate" );
    if( p_inflate )
    {
        for( ;; )
        {
            *pp_append = FUNC1( p_inflate, 64 * 1024 );
            if( *pp_append == NULL ||
                (*pp_append)->i_buffer < 64*1024 )
                break;
            pp_append = &((*pp_append)->p_next);
        }
        s = p_inflate;
    }
    FUNC2( s );
    return p_decomp ? FUNC0( p_decomp ) : NULL;
}