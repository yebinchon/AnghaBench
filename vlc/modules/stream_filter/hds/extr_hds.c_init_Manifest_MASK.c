#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* s; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_10__ {int /*<<< orphan*/  vlc_reader; } ;
typedef  TYPE_2__ manifest_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3( stream_t *s, manifest_t *m )
{
    FUNC0(m, 0, sizeof(*m));
    stream_t *st = s->s;

    m->vlc_reader = FUNC2( st, st );
    if( !m->vlc_reader )
    {
        FUNC1( s, "Failed to open source for parsing" );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}