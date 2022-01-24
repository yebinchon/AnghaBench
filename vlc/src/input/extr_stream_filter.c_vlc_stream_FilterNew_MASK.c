#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct vlc_stream_filter_private {int /*<<< orphan*/ * module; } ;
struct TYPE_9__ {int /*<<< orphan*/ * psz_filepath; struct TYPE_9__* s; int /*<<< orphan*/ * psz_url; int /*<<< orphan*/  p_input_item; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  StreamDelete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char*,char const*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 struct vlc_stream_filter_private* FUNC8 (TYPE_1__*) ; 

stream_t *FUNC9( stream_t *p_source,
                                const char *psz_stream_filter )
{
    FUNC0(p_source != NULL);

    struct vlc_stream_filter_private *priv;
    stream_t *s = FUNC7(FUNC6(p_source),
                                       StreamDelete, sizeof (*priv),
                                       "stream filter");
    if( s == NULL )
        return NULL;

    priv = FUNC8(s);
    s->p_input_item = p_source->p_input_item;

    if( p_source->psz_url != NULL )
    {
        s->psz_url = FUNC3( p_source->psz_url );
        if( FUNC5(s->psz_url == NULL) )
            goto error;

        if( p_source->psz_filepath != NULL )
            s->psz_filepath = FUNC3( p_source->psz_filepath );
    }
    s->s = p_source;

    /* */
    priv->module = FUNC2(s, "stream_filter", psz_stream_filter, true);
    if (priv->module == NULL)
        goto error;

    return s;
error:
    FUNC1(s->psz_filepath);
    FUNC4( s );
    return NULL;
}