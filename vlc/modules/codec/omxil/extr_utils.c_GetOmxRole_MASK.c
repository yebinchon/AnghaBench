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
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 
 int VIDEO_ES ; 

const char *FUNC4( vlc_fourcc_t i_fourcc, enum es_format_category_e i_cat,
                        bool b_enc )
{
    if(b_enc)
        return i_cat == VIDEO_ES ?
            FUNC2( i_fourcc ) : FUNC0( i_fourcc );
    else
        return i_cat == VIDEO_ES ?
            FUNC3( i_fourcc ) : FUNC1( i_fourcc );
}