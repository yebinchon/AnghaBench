#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct vlc_demux_private {int /*<<< orphan*/ * module; } ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
typedef  int /*<<< orphan*/  es_out_t ;
struct TYPE_8__ {char const* psz_name; char const* psz_location; char* psz_filepath; int b_preparsing; int /*<<< orphan*/ * p_sys; int /*<<< orphan*/ * pf_control; int /*<<< orphan*/ * pf_demux; int /*<<< orphan*/ * out; int /*<<< orphan*/ * s; int /*<<< orphan*/ * psz_url; int /*<<< orphan*/ * p_input_item; } ;
typedef  TYPE_1__ demux_t ;

/* Variables and functions */
 char* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  demux_DestroyDemux ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  demux_Probe ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 void* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (char*,char) ; 
 char* FUNC13 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*,char*,char const*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 struct vlc_demux_private* FUNC17 (TYPE_1__*) ; 

demux_t *FUNC18( vlc_object_t *p_obj, input_thread_t *p_input,
                            const char *psz_demux, const char *url,
                            stream_t *s, es_out_t *out, bool b_preparsing )
{
    struct vlc_demux_private *priv;
    demux_t *p_demux = FUNC16(p_obj, demux_DestroyDemux,
                                            sizeof (*priv), "demux");

    if (FUNC14(p_demux == NULL))
        return NULL;

    FUNC1(s != NULL);
    priv = FUNC17(p_demux);

    if (!FUNC7( psz_demux, "any" ) || !psz_demux[0])
    {   /* Look up demux by mime-type for hard to detect formats */
        char *type = FUNC11( s );
        if( type != NULL )
        {
            psz_demux = FUNC2( type );
            FUNC3( type );
        }
    }

    p_demux->p_input_item = p_input ? FUNC5(p_input) : NULL;
    p_demux->psz_name = FUNC9( psz_demux );
    if (FUNC14(p_demux->psz_name == NULL))
        goto error;

    p_demux->psz_url = FUNC9(url);
    if (FUNC14(p_demux->psz_url == NULL))
        goto error;

    const char *p = FUNC13(p_demux->psz_url, "://");
    p_demux->psz_location = (p != NULL) ? (p + 3) : "";
    p_demux->psz_filepath = FUNC4(p_demux->psz_location); /* parse URL */

    if( !b_preparsing )
        FUNC6( p_obj, "creating demux \"%s\", URL: %s, path: %s",
                 psz_demux, url, p_demux->psz_filepath );

    p_demux->s              = s;
    p_demux->out            = out;
    p_demux->b_preparsing   = b_preparsing;

    p_demux->pf_demux   = NULL;
    p_demux->pf_control = NULL;
    p_demux->p_sys      = NULL;

    const char *psz_module = NULL;

    if( !FUNC8( p_demux->psz_name, "any" ) && p_demux->psz_filepath )
    {
        char const* psz_ext = FUNC12( p_demux->psz_filepath, '.' );

        if( psz_ext )
            psz_module = FUNC0( psz_ext + 1, b_preparsing );
    }

    if( psz_module == NULL )
        psz_module = p_demux->psz_name;

    priv->module = FUNC15(p_demux, "demux", psz_module,
        !FUNC8(psz_module, p_demux->psz_name), demux_Probe, p_demux);

    if (priv->module == NULL)
    {
        FUNC3( p_demux->psz_filepath );
        goto error;
    }

    return p_demux;
error:
    FUNC3( p_demux->psz_name );
    FUNC10( p_demux );
    return NULL;
}