#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_6__ {scalar_t__ i_length; } ;
typedef  TYPE_1__ block_t ;
struct TYPE_7__ {scalar_t__ size; scalar_t__ data; } ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t FUNC1 (int,scalar_t__) ; 
 scalar_t__ FUNC2 (char**,char*,unsigned int,int,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,size_t const) ; 
 int FUNC5 (char*,char*,int*,int*,int*,int*,int*,int*,int*,int*,int*,int*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static block_t *FUNC8( const AVPacket *p_pkt, unsigned i_order )
{
    if( p_pkt->size <= 0 )
        return NULL;

    char buffer[256];
    const size_t i_buffer_size = FUNC1( (int)sizeof(buffer) - 1, p_pkt->size );
    FUNC4( buffer, p_pkt->data, i_buffer_size );
    buffer[i_buffer_size] = '\0';

    /* */
    int i_layer;
    int h0, m0, s0, c0;
    int h1, m1, s1, c1;
    int i_position = 0;
    if( FUNC5( buffer, "Dialogue: %d,%d:%d:%d.%d,%d:%d:%d.%d,%n", &i_layer,
                &h0, &m0, &s0, &c0, &h1, &m1, &s1, &c1, &i_position ) < 9 )
        return NULL;
    if( i_position <= 0 || (unsigned)i_position >= i_buffer_size )
        return NULL;

    char *p;
    if( FUNC2( &p, "%u,%d,%.*s", i_order, i_layer, p_pkt->size - i_position, p_pkt->data + i_position ) < 0 )
        return NULL;

    block_t *p_frame = FUNC3( p, FUNC6(p) + 1 );
    if( p_frame )
        p_frame->i_length = FUNC7((h1-h0) * 3600 +
                                         (m1-m0) * 60 +
                                         (s1-s0) * 1) +
                             FUNC0 (c1-c0) / 100;
    return p_frame;
}