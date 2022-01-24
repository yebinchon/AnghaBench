#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  force; } ;
struct TYPE_6__ {TYPE_1__ obj; int /*<<< orphan*/  s; } ;
typedef  TYPE_2__ demux_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,char const**,int) ; 

__attribute__((used)) static int FUNC3( demux_t *p_demux )
{
    const uint8_t *p_peek;
    size_t i_peek = FUNC2( p_demux->s, &p_peek, 16 );
    if( i_peek < 16 )
        return VLC_EGENERIC;

    if( !FUNC0( p_peek, "\xEF\xBB\xBF", 3 ) )
        p_peek += 3;

    if( ( FUNC0( p_peek, "WEBVTT", 6 ) ||
          ( p_peek[6] != '\n' &&
            p_peek[6] != ' ' &&
            p_peek[6] != '\t' &&
           ( p_peek[6] != '\r' || p_peek[7] != '\n' ) )
        ) && !p_demux->obj.force )
    {
        FUNC1( p_demux, "subtitle demux discarded" );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}