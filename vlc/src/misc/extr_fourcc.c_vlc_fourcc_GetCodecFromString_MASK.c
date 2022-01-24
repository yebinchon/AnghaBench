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
typedef  int /*<<< orphan*/  vlc_fourcc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const,char const,char const,char const) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

vlc_fourcc_t FUNC3( int i_cat, const char *psz_fourcc )
{
    if( !psz_fourcc || FUNC1(psz_fourcc) != 4 )
        return 0;
    return FUNC2( i_cat,
                                FUNC0( psz_fourcc[0], psz_fourcc[1],
                                            psz_fourcc[2], psz_fourcc[3] ) );
}