#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  psz_url; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_seekpoint_end; int /*<<< orphan*/  i_seekpoint_start; int /*<<< orphan*/  i_title_end; int /*<<< orphan*/  i_title_start; } ;
typedef  TYPE_2__ input_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__**,char const*,char const**) ; 
 scalar_t__ FUNC4 (TYPE_1__**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5( input_thread_t *p_input, input_source_t *source,
                         stream_t **stream, char const *anchor )
{
    char const* extra;
    if( FUNC3( stream, anchor, &extra ) )
    {
        FUNC2( p_input, "unable to attach stream-extractors for %s",
            (*stream)->psz_url );

        return VLC_EGENERIC;
    }

    if( FUNC4( stream, NULL ) )
        FUNC1( p_input, "attachment of directory-extractor failed for %s",
            (*stream)->psz_url );

    FUNC0( extra ? extra : "",
        &source->i_title_start, &source->i_title_end,
        &source->i_seekpoint_start, &source->i_seekpoint_end );

    return VLC_SUCCESS;
}