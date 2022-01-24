#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  addons_finder_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static stream_t * FUNC2( addons_finder_t *p_obj, const char *psz_uri )
{
    stream_t *p_stream = FUNC1( p_obj, psz_uri );
    if( p_stream )
    {
        /* (non applicable everywhere) remove extra
         * compression, bad wine madness :YYY */
        stream_t *p_chain = FUNC0( p_stream, "inflate" );
        if( p_chain )
            p_stream = p_chain;
    }
    return p_stream;
}