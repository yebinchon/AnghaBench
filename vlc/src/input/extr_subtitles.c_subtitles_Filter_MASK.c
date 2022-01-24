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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,char const*) ; 
 char* FUNC1 (char const*,char) ; 
 scalar_t__** sub_exts ; 

int FUNC2( const char *psz_dir_content )
{
    const char *tmp = FUNC1( psz_dir_content, '.');

    if( !tmp )
        return 0;
    tmp++;

    for( int i = 0; sub_exts[i][0]; i++ )
        if( FUNC0( sub_exts[i], tmp ) == 0 )
            return 1;
    return 0;
}