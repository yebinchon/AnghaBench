#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_8__ {TYPE_4__* ic; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_9__ {unsigned int nb_streams; } ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( demux_t *p_demux, AVDictionary *options )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    unsigned nb_streams = p_sys->ic->nb_streams;

    AVDictionary *streamsoptions[nb_streams ? nb_streams : 1];

    streamsoptions[0] = options;
    for ( unsigned i = 1; i < nb_streams; i++ )
    {
        streamsoptions[i] = NULL;
        if( streamsoptions[0] )
            FUNC2( &streamsoptions[i], streamsoptions[0], 0 );
    }

    FUNC6(); /* avformat calls avcodec behind our back!!! */
    int error = FUNC4( p_sys->ic, streamsoptions );
    FUNC7();

    FUNC1( p_demux, &streamsoptions[0] );
    for ( unsigned i = 1; i < nb_streams; i++ ) {
        FUNC3( &streamsoptions[i] );
    }

    if( error < 0 )
    {
        FUNC5( p_demux, "Could not find stream info: %s",
                  FUNC8(FUNC0(error)) );
    }
}