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
struct stream_extractor_private {TYPE_1__* wrapper; TYPE_1__* source; scalar_t__ (* pf_init ) (struct stream_extractor_private*,TYPE_1__*) ;} ;
struct TYPE_9__ {struct stream_extractor_private* p_sys; int /*<<< orphan*/  p_input_item; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  se_StreamDelete ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (struct stream_extractor_private*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6( struct stream_extractor_private* priv, stream_t* source )
{
    stream_t* s = FUNC5( FUNC4(source),
                                        se_StreamDelete );

    if( FUNC3( !s ) )
        return VLC_ENOMEM;

    if( priv->pf_init( priv, s ) )
    {
        FUNC0( s );
        return VLC_EGENERIC;
    }

    priv->wrapper = s;
    priv->wrapper->p_input_item = source->p_input_item;
    priv->wrapper->p_sys = priv;

    priv->source = source;

    priv->wrapper = FUNC1( priv->wrapper, "cache" );
    return VLC_SUCCESS;
}