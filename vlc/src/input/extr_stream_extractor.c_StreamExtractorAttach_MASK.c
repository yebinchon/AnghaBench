#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * source; int /*<<< orphan*/  identifier; } ;
struct stream_extractor_private {int /*<<< orphan*/ * wrapper; int /*<<< orphan*/  module; void* object; TYPE_1__ directory; int /*<<< orphan*/ * pf_clean; int /*<<< orphan*/  pf_init; TYPE_1__ extractor; } ;
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 void* FUNC0 (TYPE_1__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (void*,char const*,char const*,int) ; 
 scalar_t__ FUNC2 (struct stream_extractor_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * se_CleanStream ; 
 int /*<<< orphan*/  se_InitDirectory ; 
 int /*<<< orphan*/  se_InitStream ; 
 int /*<<< orphan*/  FUNC3 (struct stream_extractor_private*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct stream_extractor_private* FUNC6 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8( stream_t** source, char const* identifier,
    char const* module_name )
{
    const bool extractor = identifier != NULL;
    char const* capability = extractor ? "stream_extractor"
                                       : "stream_directory";

    struct stream_extractor_private* priv = FUNC6(
        FUNC7(*source), sizeof( *priv ), capability );

    if( FUNC5( !priv ) )
        return VLC_ENOMEM;

    if( extractor )
    {
        priv->object = FUNC0( &priv->extractor );

        priv->pf_init = se_InitStream;
        priv->pf_clean = se_CleanStream;

        priv->extractor.source = *source;
        priv->extractor.identifier = FUNC4( identifier );

        if( FUNC5( !priv->extractor.identifier ) )
            goto error;
    }
    else
    {
        priv->object = FUNC0( &priv->directory );

        priv->pf_init = se_InitDirectory;
        priv->pf_clean = NULL;

        priv->directory.source = *source;
    }

    priv->module = FUNC1( priv->object, capability, module_name, true );

    if( !priv->module || FUNC2( priv, *source ) )
        goto error;

    *source = priv->wrapper;
    return VLC_SUCCESS;

error:
    FUNC3( priv );
    return VLC_EGENERIC;
}