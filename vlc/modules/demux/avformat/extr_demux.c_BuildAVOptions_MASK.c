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
typedef  int /*<<< orphan*/  demux_t ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static AVDictionary * FUNC3( demux_t *p_demux )
{
    char *psz_opts = FUNC1( p_demux, "avformat-options" );
    AVDictionary *options = NULL;
    if( psz_opts )
    {
        FUNC2( psz_opts, &options );
        FUNC0( psz_opts );
    }
    return options;
}