#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_18__ {int /*<<< orphan*/ * pf_readdir; int /*<<< orphan*/ * pf_block; int /*<<< orphan*/ * pf_read; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_19__ {int /*<<< orphan*/  b_preparsing; int /*<<< orphan*/  p_es_out; } ;
typedef  TYPE_2__ input_thread_private_t ;
struct TYPE_20__ {int /*<<< orphan*/  i_seekpoint_end; int /*<<< orphan*/  i_seekpoint_start; int /*<<< orphan*/  i_title_end; int /*<<< orphan*/  i_title_start; } ;
typedef  TYPE_3__ input_source_t ;
typedef  TYPE_1__ demux_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__**,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static demux_t *FUNC12( input_thread_t *p_input,
                               input_source_t *p_source, const char *url,
                               const char *psz_demux, const char *psz_anchor )
{
    input_thread_private_t *priv = FUNC5(p_input );
    vlc_object_t *obj = FUNC2(p_input);

    /* create the underlying access stream */
    stream_t *p_stream = FUNC6( obj, p_input, priv->p_es_out,
                                           priv->b_preparsing, url );
    if( p_stream == NULL )
        return NULL;

    p_stream = FUNC7( p_stream );

    if( p_stream->pf_read == NULL && p_stream->pf_block == NULL
     && p_stream->pf_readdir == NULL )
    {   /* Combined access/demux, no stream filtering */
        FUNC1( psz_anchor,
                     &p_source->i_title_start, &p_source->i_title_end,
                    &p_source->i_seekpoint_start, &p_source->i_seekpoint_end );
        return p_stream;
    }

    /* attach explicit stream filters to stream */
    char *psz_filters = FUNC10( p_input, "stream-filter" );
    if( psz_filters )
    {
        p_stream = FUNC8( p_stream, psz_filters );
        FUNC4( psz_filters );
    }

    /* handle anchors */
    if( FUNC0( p_input, p_source, &p_stream, psz_anchor ) )
        goto error;

    /* attach conditional record stream-filter */
    if( FUNC9( p_input, "input-record-native" ) )
        p_stream = FUNC8( p_stream, "record" );

    /* create a regular demux with the access stream created */
    demux_t *demux = FUNC3( obj, p_input, psz_demux, url, p_stream,
                                        priv->p_es_out, priv->b_preparsing );
    if( demux != NULL )
        return demux;

error:
    FUNC11( p_stream );
    return NULL;
}