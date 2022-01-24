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
struct vlc_demux_private {int /*<<< orphan*/ * module; } ;
struct TYPE_9__ {int /*<<< orphan*/ * out; int /*<<< orphan*/ * psz_filepath; int /*<<< orphan*/ * psz_location; int /*<<< orphan*/ * psz_url; int /*<<< orphan*/ * psz_name; int /*<<< orphan*/ * p_sys; int /*<<< orphan*/ * p_input_item; struct TYPE_9__* p_next; } ;
typedef  TYPE_1__ demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  demux_DestroyDemux ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 struct vlc_demux_private* FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static demux_t *FUNC6( demux_t *p_next, const char *p_name )
{
    struct vlc_demux_private *priv;
    demux_t *p_demux = FUNC4(FUNC0(p_next),
                                            demux_DestroyDemux, sizeof (*priv),
                                            "demux filter");
    if (FUNC3(p_demux == NULL))
        return NULL;

    priv = FUNC5(p_demux);
    p_demux->p_next       = p_next;
    p_demux->p_input_item = NULL;
    p_demux->p_sys        = NULL;
    p_demux->psz_name     = NULL;
    p_demux->psz_url      = NULL;
    p_demux->psz_location = NULL;
    p_demux->psz_filepath = NULL;
    p_demux->out          = NULL;

    priv->module = FUNC1(p_demux, "demux_filter", p_name,
                               p_name != NULL);
    if (priv->module == NULL)
        goto error;

    return p_demux;
error:
    FUNC2( p_demux );
    return NULL;
}